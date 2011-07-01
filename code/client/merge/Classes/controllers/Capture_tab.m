// vim:tabstop=4 shiftwidth=4 syntax=objc

#import "controllers/Capture_tab.h"

#import "App_delegate.h"
#import "GPS.h"
#import "controllers/Note_taking_controller.h"
#import "macro.h"



@interface Capture_tab ()
- (void)switch_changed;
- (void)update_gui;
- (void)start_timer;
- (void)add_note;
@end


@implementation Capture_tab

@synthesize old_location = old_location_;

- (id)init
{
	if (!(self = [super init]))
		return nil;

	self.title = @"Capture";

	[[NSNotificationCenter defaultCenter] addObserver:self
		selector:@selector(did_enter_background)
		name:@"UIApplicationDidEnterBackgroundNotification" object:nil];

	[[NSNotificationCenter defaultCenter] addObserver:self
		selector:@selector(did_become_active)
		name:@"UIApplicationWillEnterForegroundNotification" object:nil];

	return self;
}

- (void)dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];

	[timer_ invalidate];
	if (watching_)
		[[GPS get] remove_watcher:self];
	[switch_ removeTarget:self action:@selector(switch_changed)
		forControlEvents:UIControlEventValueChanged];
	[clock_ release];
	[ago_ release];
	[note_ release];
	[capabilities_ release];
	[movement_ release];
	[switch_ release];
	[altitude_ release];
	[precission_ release];
	[latitude_ release];
	[longitude_ release];
	[start_title_ release];
	[old_location_ release];
	[super dealloc];
}

- (void)loadView
{
	[super loadView];

	UIImageView *background = [[UIImageView alloc]
		initWithImage:[UIImage imageNamed:@"back.jpg"]];
	[self.view addSubview:background];
	[background release];

	note_ = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
	note_.frame = CGRectMake(5, 85, 310, 135);
	[note_ setTitle:@"" forState:UIControlStateNormal];
	[note_ addTarget:self action:@selector(add_note)
		forControlEvents:UIControlEventTouchUpInside];
	_MAKE_BUTTON_LABEL_COLOR(note_.titleLabel);
	[self.view addSubview:note_];

	start_title_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 210, 20)];
	start_title_.text = @"1";
	_MAKE_DEFAULT_LABEL_COLOR(start_title_);
	[self.view addSubview:start_title_];

	switch_ = [[UISwitch alloc] initWithFrame:CGRectMake(220, 20, 100, 20)];
	[switch_ addTarget:self action:@selector(switch_changed)
		forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:switch_];

	longitude_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 300, 20)];
	longitude_.text = @"2";
	_MAKE_BUTTON_LABEL_COLOR(longitude_);
	[self.view addSubview:longitude_];

	latitude_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 300, 20)];
	latitude_.text = @"3";
	_MAKE_BUTTON_LABEL_COLOR(latitude_);
	[self.view addSubview:latitude_];

	precission_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 300, 20)];
	precission_.text = @"4";
	_MAKE_BUTTON_LABEL_COLOR(precission_);
	[self.view addSubview:precission_];

	altitude_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 300, 20)];
	altitude_.text = @"5";
	_MAKE_BUTTON_LABEL_COLOR(altitude_);
	[self.view addSubview:altitude_];

	ago_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 170, 300, 20)];
	ago_.text = @"6";
	_MAKE_BUTTON_LABEL_COLOR(ago_);
	[self.view addSubview:ago_];

	movement_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 190, 300, 20)];
	movement_.text = @"7";
	_MAKE_BUTTON_LABEL_COLOR(movement_);
	[self.view addSubview:movement_];

	capabilities_ = [[UILabel alloc]
		initWithFrame:CGRectMake(10, 220, 300, 79)];
	capabilities_.text = @"";
	capabilities_.numberOfLines = 0;
	capabilities_.font = [UIFont systemFontOfSize:15];
	_MAKE_DEFAULT_LABEL_COLOR(capabilities_);
	[self.view addSubview:capabilities_];

	clock_ = [[UILabel alloc] initWithFrame:CGRectMake(10, 300, 300, 100)];
	clock_.text = @"00:00:00";
	clock_.numberOfLines = 1;
	clock_.textAlignment = UITextAlignmentCenter;
	clock_.adjustsFontSizeToFitWidth = YES;
	clock_.font = [UIFont systemFontOfSize:80];
	_MAKE_DEFAULT_LABEL_COLOR(clock_);
	[self.view addSubview:clock_];
}

/** The view is going to be shown. Update it.
 */
- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

	switch_.on = [GPS get].gps_is_on;
	[self update_gui];

	[self start_timer];
}

/** The view is going to dissappear.
 */
- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];

	[timer_ invalidate];
	timer_ = 0;
}

#pragma mark Custom methods

/** User toggled on/off GUI switch.
 */
- (void)switch_changed
{
	GPS *gps = [GPS get];

	if ([switch_ isOn]) {
		if (![gps start]) {
			switch_.on = false;
			[self warn:@"Couldn't start GPS" title:@"GPS"];
		} else {
			[gps add_watcher:self];
			watching_ = YES;
		}
	} else {
		if (watching_)
			[gps remove_watcher:self];
		watching_ = NO;
		[gps stop];
	}

	[self update_gui];

	// Force saving preferences here, otherwise if we get killed they are lost.
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults synchronize];
}

/** Handles updating the gui labels and other state.
 */
- (void)update_gui
{
	// Clock time.
	NSDate *now = [NSDate date];
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterMediumStyle];
	clock_.text = [formatter stringFromDate:now];
	[formatter release];

	// State of capture.
	if (switch_.on)
		start_title_.text = @"Reading GPS...";
	else
		start_title_.text = @"GPS off";

	// Device information. Update only if needed, it doesn't change at runtime.
	if (capabilities_.text.length < 1) {
		if (g_is_multitasking) {
			capabilities_.text = [NSString stringWithFormat:@"Multitasking "
				@"available. Location changes %@. Region monitoring %@.",
				g_location_changes ? @"available" : @"not available",
				g_region_monitoring ? @"available" : @"not available"];
		} else {
			capabilities_.text = @"Your device doesn't support multitasking. "
				@"GPS positions will only be captured while you have this "
				@"program on.";
		}
	}

	// Last location.
	CLLocation *location = [GPS get].last_pos;
	if (!location) {
		longitude_.text = @"No last position";
		latitude_.text = @"";
		precission_.text = @"";
		altitude_.text = @"";
		ago_.text = @"";
		movement_.text = @"";
		return;
	}

	longitude_.text = [NSString stringWithFormat:@"Longitude: %@",
		[GPS degrees_to_dms:location.coordinate.longitude latitude:NO]];

	latitude_.text = [NSString stringWithFormat:@"Latitude: %@",
		[GPS degrees_to_dms:location.coordinate.latitude latitude:YES]];

	const CLLocationAccuracy v = (location.horizontalAccuracy +
		location.horizontalAccuracy) / 2.0;
	precission_.text = [NSString stringWithFormat:@"Precission: %0.0fm", v];

	altitude_.text = (location.verticalAccuracy < 0) ? @"Altitude: ?" :
		[NSString stringWithFormat:@"Altitude: %0.0fm +/- %0.1fm",
			location.altitude, location.verticalAccuracy];

	NSTimeInterval diff = [now timeIntervalSinceDate:location.timestamp];
	ago_.text = [NSString stringWithFormat:@"%@ ago", (diff > 60 ? 
		[NSString stringWithFormat:@"%d minute(s)", (int)diff / 60] :
		[NSString stringWithFormat:@"%d second(s)", (int)diff])];

	if ([self.old_location
			respondsToSelector:@selector(distanceFromLocation:)]) {
		movement_.text = [NSString
			stringWithFormat:@"New pos changed %0.0f meters",
			[self.old_location distanceFromLocation:location]];
		if (![self.old_location.timestamp isEqualToDate:location.timestamp])
			self.old_location = location;
	} else {
		movement_.text = self.old_location ? @"" : @"First position!";
		self.old_location = location;
	}
}

/** Starts the GUI update timer every second.
 * Only if there is no previous timer attached to the class variable...
 */
- (void)start_timer
{
	if (!timer_)
		timer_ = [NSTimer scheduledTimerWithTimeInterval:1 target:self
			selector:@selector(update_gui) userInfo:nil repeats:YES];
}

/** The application did become active. See if we have to reenable the timers.
 */
- (void)did_become_active
{
	if (reenable_timers_) {
		DLOG(@"Did become active, re-enabling GUI timer.");
		[self start_timer];
		reenable_timers_ = NO;
	}
}

/** The application went into background.
 * Disable the timers and make a note to reenable them when coming back.
 */
- (void)did_enter_background
{
	if (timer_) {
		DLOG(@"Entering background, disabling GUI timer.");
		[timer_ invalidate];
		timer_ = nil;
		reenable_timers_ = YES;
	}
}

/** Captures the last position and offers the user to input a note.
 * The note won't be added if the gps is off, or there was no last
 * input available. The purpose is to have a valid note location.
 */
- (void)add_note
{
	if (![GPS get].gps_is_on) {
		[self warn:@"Please turn GPS on to take a note with position."
			title:@"GPS capture off"];
		return;
	}

	CLLocation *location = [GPS get].last_pos;
	if (!location) {
		[self warn:@"Wait until the GPS receives at least one position."
			title:@"No GPS data"];
		return;
	}

	Note_taking_controller *controller = [Note_taking_controller new];
	controller.location = location;
	[self presentModalViewController:controller animated:YES];
	[controller release];
}

#pragma mark KVO

/** Watches GPS changes.
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object
	change:(NSDictionary *)change context:(void *)context
{
	if ([keyPath isEqual:[GPS key_path]])
		[self update_gui];
	else
		[super observeValueForKeyPath:keyPath ofObject:object change:change
			context:context];
}

@end
