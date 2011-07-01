//
//  main.m
//  merge
//
//  Created by Snow Leopard User on 01/07/2011.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <stdio.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"Step 1");
	printf("before calling UI Application thread");
	int retVal = UIApplicationMain(argc, argv, nil, @"AppDelegate");
    
	[pool release];
    return retVal;
}
