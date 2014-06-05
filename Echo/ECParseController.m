//
//  ECParseController.m
//  Echo
//
//  Created by Kevin Coleman on 6/4/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import "ECParseController.h"


@implementation ECParseController

- (id) init
{
    self = [super init];
    if (self) {
    
    }
    return self;
}

- (void) initializeParseSDK
{
    [Parse setApplicationId:@"tIy79nGCHMIStvoEBZvT5FAcBZpVY1KKnm7ic7G5"
                  clientKey:@"S7tAFTsWKAKwQGotHZrhAEusnOKTpsz4j7a3gOri"];
    
}

- (void) createParseUserWithEmail:(NSString *)email andPassword:(NSString *)password
{
    PFUser *user = [PFUser user];
    user.email = email;
    user.password = password;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {

        } else {

        }
    }];
}

- (void) logParseUserInWithEmail:(NSString *)email andPassword:(NSString *)password
{
    [PFUser logInWithUsernameInBackground:email password:password
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            // Do stuff after successful login.
                                        } else {
                                            // The login failed. Check error to see why.
                                        }
                                    }];
}

- (void) logOutParseUser
{
    [PFUser logOut];
}

- (void) requestLayerIdentityTokenWithNonce:(NSString *)nonce
{
    
}

@end
