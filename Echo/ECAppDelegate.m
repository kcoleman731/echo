//
//  ECAppDelegate.m
//  Echo
//
//  Created by Kevin Coleman on 5/30/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import "ECAppDelegate.h"


@implementation ECAppDelegate

@synthesize parseController = _parseController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIViewController *controller = [[UIViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self.window setRootViewController:navigationController];
    
    [self initializeSDKs];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [self saveContext];
}

- (void) initializeSDKs
{
    self.parseController = [[ECParseController alloc] init];
}
@end
