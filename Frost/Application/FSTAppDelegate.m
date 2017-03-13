//
//  FSTAppDelegate.m
//  Frost
//
//  Created by Tolotra Raharison on 3/10/17
//  Copyright (c) 2014 Etech. All rights reserved.
//

#import "FSTAppDelegate.h"

#if HAS_POD(CocoaLumberjack)
    #import <CocoaLumberjack/CocoaLumberjack.h>

    #if HAS_POD(Sidecar)
    #import <Sidecar/CRLMethodLogFormatter.h>
    #endif
#endif


@implementation FSTAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self initializeLogging];

    return YES;
}


#pragma mark Amaro foundation goodies

/**
 Sets up CocoaLumberjack
 */
-(void)initializeLogging
{
    #if HAS_POD(CocoaLumberjack)
        #if HAS_POD(Sidecar)
        CRLMethodLogFormatter *logFormatter = [[CRLMethodLogFormatter alloc] init];
        [[DDASLLogger sharedInstance] setLogFormatter:logFormatter];
        [[DDTTYLogger sharedInstance] setLogFormatter:logFormatter];
        #endif

        // Emulate NSLog behavior for DDLog*
        [DDLog addLogger:[DDASLLogger sharedInstance]];
        [DDLog addLogger:[DDTTYLogger sharedInstance]];
    #endif
}

@end
