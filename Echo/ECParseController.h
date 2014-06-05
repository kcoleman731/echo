//
//  ECParseController.h
//  Echo
//
//  Created by Kevin Coleman on 6/4/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>

@interface ECParseController : NSObject

- (id) init;

- (void) initializeParseSDK;

- (void) createParseUserWithEmail:(NSString *)email andPassword:(NSString *)password;

- (void) logParseUserInWithEmail:(NSString *)email andPassword:(NSString *)password;

- (void) logOutParseUser;

- (void) requestLayerIdentityTokenWithNonce:(NSString *)nonce;

@end
