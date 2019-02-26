//
//  APINetworkManager.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APINetworkManager : NSObject

typedef void (^APINetworkManagerCompletionBlock) (NSArray *_Nullable results, NSError *_Nullable error);

- (instancetype)initWithSession:(NSURLSession *)session;

- (void)getFeedWithParams:(NSString *)page
          completionBlock:(APINetworkManagerCompletionBlock)success;

@end

NS_ASSUME_NONNULL_END
