//
//  RelapSDK.m
//  Relap SDK Example
//
//  Created by Igor Kamenev on 16/12/14.
//  Copyright (c) 2014 Relap.io. All rights reserved.
//

#import "RelapSDK.h"

static RelapSDK* _relapSDK;

@interface RelapSDK ()

@property (nonatomic, strong) NSString* applicationID;

@end

@implementation RelapSDK

+ (RelapSDK*) relapSDK
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _relapSDK = [RelapSDK new];
    });
    
    return _relapSDK;
}

+ (void) setupWithApplicationID: (NSString*) applicationID
{
    [[self relapSDK] setupWithApplicationID:applicationID];
}

- (void) setupWithApplicationID: (NSString*) applicationID
{
    self.applicationID = applicationID;
}

+ (void) markContentSeen: (NSString*) contentID
                  userID: (NSString*) userID
            successBlock: (RelapSDKSuccessBlock) successBlock
            failureBlock: (RelapSDKFailureBlock) failureBlock
{
    [[self relapSDK] markContentSeen:contentID
                              userID:userID
                        successBlock:successBlock
                        failureBlock:failureBlock];
}

- (void) markContentSeen: (NSString*) contentID
                  userID: (NSString*) userID
            successBlock: (RelapSDKSuccessBlock) successBlock
            failureBlock: (RelapSDKFailureBlock) failureBlock
{
    NSAssert(self.applicationID, @"You should setup applicationID first (setupWithApplicationID:)");
    NSAssert(contentID, @"ContentID is necessary to be provided.");
    NSAssert(userID, @"ContentID is necessary to be provided.");
    
}

+ (void) getContentRelativeForContentID: (NSString*) contentID
                                 userID: (NSString*) userID
                           successBlock: (RelapSDKSuccessBlock) successBlock
                           failureBlock: (RelapSDKFailureBlock) failureBlock
{
    [[self relapSDK] getContentRelativeForContentID:contentID
                                             userID:userID
                                       successBlock:successBlock
                                       failureBlock:failureBlock];
}

- (void) getContentRelativeForContentID: (NSString*) contentID
                                 userID: (NSString*) userID
                           successBlock: (RelapSDKSuccessBlock) successBlock
                           failureBlock: (RelapSDKFailureBlock) failureBlock
{
    NSAssert(self.applicationID, @"You should setup applicationID first (setupWithApplicationID:)");
    NSAssert(contentID, @"ContentID is necessary to be provided.");
    NSAssert(userID, @"ContentID is necessary to be provided.");
    
}

@end
