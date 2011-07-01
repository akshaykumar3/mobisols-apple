//
//  AppDelegate.m
//  merge
//
//  Created by Snow Leopard User on 01/07/2011.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "AppDelegate.h"

#import "GPS.h"
//	#import "controllers/Tab_controller.h"
#import "db/DB.h"
#import "macro.h"

#import "RPReachability.h"

#ifdef PHONEGAP_FRAMEWORK
	#import <PhoneGap/PhoneGapViewController.h>
#else
	#import "PhoneGapViewController.h"
#endif

/// Pseudo constants.
static NSString *REACH_HOST = @"github.com";

// Private function forward declarations.
static void _set_globals(void);


@implementation AppDelegate

@synthesize invokeString;

@synthesize db = db_;


- (id) init
{	
	/** If you need to do any extra app-specific initialization, you can do it here
	 *  -jm
	 **/
    return [super init];
}

/**
 * This is main kick off after the app inits, the views and Settings are setup here. (preferred - iOS4 and up)
 */
 
 #pragma mark -
 #pragma mark Application lifecycle
 
 
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	DLOG(@"Lunching application with %@", launch_options);

	[[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];
	_set_globals();
	[DB preserve_old_db];
	
	/** Set up the reachability class. This works slowly, so let it be first. */
	[RPReachability init_with_host:REACH_HOST];

	db_ = [DB open_database];
	if (!db_) {
		[self handle_error:@"Couldn't open database" do_abort:YES];
		return NO;
	}

	// For the moment we don't know what to do with this...
	if (launch_options)
		[db_ log:[NSString stringWithFormat:@"Launch options? %@",
			launch_options]];
	
	
	/*NSArray *keyArray = [launchOptions allKeys];
	if ([launchOptions objectForKey:[keyArray objectAtIndex:0]]!=nil) 
	{
		NSURL *url = [launchOptions objectForKey:[keyArray objectAtIndex:0]];
		self.invokeString = [url absoluteString];
		NSLog(@"merge launchOptions = %@",url);
	}
	
	return [super application:application didFinishLaunchingWithOptions:launchOptions];*/
	
	return YES;
}

/** Something stole the focus of the application.
 * Or the user might have locked the screen. Change to medium gps tracking.
 */
- (void)applicationWillResignActive:(UIApplication *)application
{
	[[GPS get] set_accuracy:MEDIUM_ACCURACY reason:@"Lost focus."];
	[db_ flush];
}

/** The application regained focus.
 * This is the pair to applicationWillResignActive.
 */
- (void)applicationWillEnterForeground:(UIApplication *)application
{
	[[GPS get] set_accuracy:HIGH_ACCURACY reason:@"Gained focus."];
}

/** The user quit the app, and we are supporting background operation.
 * Suspend GUI dependant timers and log status change.
 *
 * This method is only called if the app is running on a device
 * supporting background operation. Otherwise applicationWillTerminate
 * will be called instead.
 */
- (void)applicationDidEnterBackground:(UIApplication *)application
{
	db_.in_background = YES;
	[[GPS get] set_accuracy:LOW_ACCURACY reason:@"Entering background mode."];
	[db_ flush];
}

/** We were raised from the dead.
 * Revert bad stuff done in applicationDidEnterBackground to be nice.
 */
- (void)applicationDidBecomeActive:(UIApplication *)application
{
	db_.in_background = NO;
	[[GPS get] set_accuracy:HIGH_ACCURACY reason:@"Raising from background."];
}

/** Application shutdown. Save cache and stuff...
 * Note that the method could be called even during initialisation,
 * so you can't make any guarantees about objects being available.
 *
 * If background running is supported, applicationDidEnterBackground
 * is used instead.
 */
- (void)applicationWillTerminate:(UIApplication *)application
{
	if ([GPS get].gps_is_on)
		[db_ log:@"Terminating app while GPS was on..."];

	[db_ flush];
	[db_ close];

	// Save pending changes to user defaults.
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults synchronize];
}

#pragma mark -
#pragma mark Memory management

** Low on memory. Try to free as much as we can.
 */
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
	[db_ flush];
}

- (void)dealloc
{
	[super dealloc];
}

#pragma mark Normal methods

/** Handle reporting of errors to the user.
 * Pass the message for the error and a boolean telling to force
 * exit or let the user acknowledge the problem.
 */
- (void)handle_error:(NSString*)message do_abort:(BOOL)do_abort
{
	if (do_abort)
		abort_after_alert_ = YES;

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
		message:NON_NIL_STRING(message) delegate:self
		cancelButtonTitle:(do_abort ? @"Abort" : @"OK") otherButtonTitles:nil];
	[alert show];
	[alert release];
	DLOG(@"Error: %@", message);
}

/** Forces a deletion of the database.
 * The database will be recreated automatically. GPS detection will
 * be disabled for a moment to avoid race conditions.
 */
- (void)purge_database
{
	DLOG(@"Purging database.");
	[db_ flush];
	[db_ close];
	GPS *gps = [GPS get];
	const BOOL activate = gps.gps_is_on;
	[gps stop];

	[DB purge];

	db_ = [DB open_database];
	if (activate)
		[gps start];
}

#pragma mark UIAlertViewDelegate protocol

- (void)alertView:(UIAlertView *)alertView
	clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if (abort_after_alert_) {
		DLOG(@"User closed dialog which aborts program. Bye bye!");
		exit(1);
	}


// this happens while we are running ( in the background, or from within our own app )
// only valid if merge.plist specifies a protocol to handle
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url 
{
	// Do something with the url here
	NSString* jsString = [NSString stringWithFormat:@"handleOpenURL(\"%@\");", url];
	[self.webView stringByEvaluatingJavaScriptFromString:jsString];
	
	return YES;
}

-(id) getCommandInstance:(NSString*)className
{
	/** You can catch your own commands here, if you wanted to extend the gap: protocol, or add your
	 *  own app specific protocol to it. -jm
	 **/
	return [super getCommandInstance:className];
}

/**
 Called when the webview finishes loading.  This stops the activity view and closes the imageview
 */
- (void)webViewDidFinishLoad:(UIWebView *)theWebView 
{
	// only valid if merge.plist specifies a protocol to handle
	if(self.invokeString)
	{
		// this is passed before the deviceready event is fired, so you can access it in js when you receive deviceready
		NSString* jsString = [NSString stringWithFormat:@"var invokeString = \"%@\";", self.invokeString];
		[theWebView stringByEvaluatingJavaScriptFromString:jsString];
	}
	return [ super webViewDidFinishLoad:theWebView ];
}

- (void)webViewDidStartLoad:(UIWebView *)theWebView 
{
	return [ super webViewDidStartLoad:theWebView ];
}

/**
 * Fail Loading With Error
 * Error - If the webpage failed to load display an error with the reason.
 */
- (void)webView:(UIWebView *)theWebView didFailLoadWithError:(NSError *)error 
{
	return [ super webView:theWebView didFailLoadWithError:error ];
}

/**
 * Start Loading Request
 * This is where most of the magic happens... We take the request(s) and process the response.
 * From here we can re direct links and other protocalls to different internal methods.
 */
- (BOOL)webView:(UIWebView *)theWebView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	return [ super webView:theWebView shouldStartLoadWithRequest:request navigationType:navigationType ];
}


- (BOOL) execute:(InvokedUrlCommand*)command
{
	return [ super execute:command];
}

- (void)dealloc
{
	[ super dealloc ];
}

@end


#pragma mark Global functions

BOOL g_is_multitasking = NO;
BOOL g_location_changes = NO;
BOOL g_region_monitoring = NO;

/** Builds up the path of a file in a specific directory.
 * Note that making a path inside a DIR_BUNDLE will always fail if the file
 * doesn't exist (bundles are not allowed to be modified), while a path for
 * DIR_DOCS may succeed even if the file doesn't yet exists (useful to create
 * persistant configuration files).
 *
 * \return Returns an NSString with the path, or NULL if there was an error.
 * If you want to use the returned path with C functions, you will likely
 * call the method cStringUsingEncoding:1 on the returned object.
 */
NSString *get_path(NSString *filename, DIR_TYPE dir_type)
{
	switch (dir_type) {
		case DIR_BUNDLE:
		{
			NSString *path = [[NSBundle mainBundle]
				pathForResource:filename ofType:nil];

			if (!path)
				DLOG(@"File '%@' not found inside bundle!", filename);

			return path;
		}

		case DIR_LIB:
		{
			NSArray *paths = NSSearchPathForDirectoriesInDomains(
				NSLibraryDirectory, NSUserDomainMask, YES);
			NSString *documentsDirectory = [paths objectAtIndex:0];
			NSString *path = [documentsDirectory
				stringByAppendingPathComponent:filename];

			if (!path)
				DLOG(@"File '%@' not found inside lib directory!", filename);

			return path;
		}

		case DIR_DOCS:
		{
			NSArray *paths = NSSearchPathForDirectoriesInDomains(
				NSDocumentDirectory, NSUserDomainMask, YES);
			NSString *documentsDirectory = [paths objectAtIndex:0];
			NSString *path = [documentsDirectory
				stringByAppendingPathComponent:filename];

			if (!path)
				DLOG(@"File '%@' not found inside doc directory!", filename);

			return path;
		}

		default:
			DLOG(@"Trying to use dir_type %d", dir_type);
			assert(0 && "Invalid get_path(dir_type).");
			return 0;
	}
}

/** Updates the state of some global variables.
 * These are variables like g_is_multitasking, which can be read
 * by any one any time. Call this function whenever you want,
 * preferably during startup.
 */
static void _set_globals(void)
{
	UIDevice* device = [UIDevice currentDevice];

	if ([device respondsToSelector:@selector(isMultitaskingSupported)])
		g_is_multitasking = device.multitaskingSupported;
	else
		g_is_multitasking = NO;

	g_location_changes = NO;
	SEL getter = @selector(significantLocationChangeMonitoringAvailable);
	if ([CLLocationManager respondsToSelector:getter])
		if ([CLLocationManager performSelector:getter])
			g_location_changes = YES;

	getter = @selector(regionMonitoringAvailable);
	if ([CLLocationManager respondsToSelector:getter])
		if ([CLLocationManager performSelector:getter])
			g_region_monitoring = YES;
}



