//
//  RelapSDK.h
//  Relap SDK Example
//
//  Created by Igor Kamenev on 16/12/14.
//  Copyright (c) 2014 Relap.io. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RelapSDKSuccessBlock)(id response);
typedef void (^RelapSDKFailureBlock)(NSError* error);

@interface RelapSDK : NSObject

+ (void) setupWithApplicationID: (NSString*) applicationID;

+ (void) markContentSeen: (NSString*) contentID
                  userID: (NSString*) userID
            successBlock: (RelapSDKSuccessBlock) successBlock
            failureBlock: (RelapSDKFailureBlock) failureBlock;

+ (void) getContentRelativeForContentID: (NSString*) contentID
                                 userID: (NSString*) userID
                           successBlock: (RelapSDKSuccessBlock) successBlock
                           failureBlock: (RelapSDKFailureBlock) failureBlock;


@end
