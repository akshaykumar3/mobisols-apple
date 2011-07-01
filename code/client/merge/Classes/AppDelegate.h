//
//  AppDelegate.h
//  merge
//
//  Created by Snow Leopard User on 01/07/2011.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DB

#ifdef PHONEGAP_FRAMEWORK
	#import <PhoneGap/PhoneGapDelegate.h>
#else
	#import "PhoneGapDelegate.h"
#endif

@interface AppDelegate : PhoneGapDelegate {
	
	NSString* invokeString;
	
	DB *db_;
	
	/// Set this to YES if you want the pop up error to exit.
	BOOL abort_after_alert_;
}

/// Pointer to the global database access object.
@property (nonatomic, readonly) DB *db;

// invoke string is passed to your app on launch, this is only valid if you 
// edit merge.plist to add a protocol
// a simple tutorial can be found here : 
// http://iphonedevelopertips.com/cocoa/launching-your-own-application-via-a-custom-url-scheme.html

@property (copy)  NSString* invokeString;

- (void)handle_error:(NSString*)message do_abort:(BOOL)do_abort;
- (void)purge_database;

@end

/// \file FlokiAppDelegate.h
/// Type of directory where we want to open a file.
enum DIR_TYPE_ENUM
{
	DIR_BUNDLE,		///< Open the program's bundle for data reading.
	DIR_DOCS,		///< Directory where persistent data is stored.
	DIR_LIB,		///< Backed up data, but not exposed to the user.
};
/// Required alias for enum.
typedef enum DIR_TYPE_ENUM DIR_TYPE;

/// Read these variables to know what is supported on the device.
extern BOOL g_is_multitasking;
extern BOOL g_location_changes;
extern BOOL g_region_monitoring;

NSString *get_path(NSString *filename, DIR_TYPE dir_type);

// vim:tabstop=4 shiftwidth=4 syntax=objc
