//
//  ECAppDelegate.h
//  Echo
//
//  Created by Kevin Coleman on 5/30/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECParseController.h"

@interface ECAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) ECParseController *parseController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
