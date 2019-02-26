//
//  APINetworkManager.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "APINetworkManager.h"

static NSString *const kFeedPath = @"cdn-og-test-api/test-task/social";

@interface APINetworkManager ()

@property (nonatomic, strong) NSURLSession *session;

@end

@implementation APINetworkManager

- (instancetype)initWithSession:(NSURLSession *)session
{
    self = [super init];
    if (self)
    {
        self.session = session;
    }
    
    return self;
}

- (NSString *)baseURL
{
    return @"https://storage.googleapis.com";
}

- (void)fetchAPIRequestWithURL:(NSURL *)URL
               completionBlock:(APINetworkManagerCompletionBlock)completionBlock
{
    NSURLSessionDataTask *task = [self.session dataTaskWithURL:URL
                                             completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                                 if(error)
                                                 {
                                                     completionBlock(NULL, error);
                                                 }
                                                 
                                                 NSArray *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
                                                 
                                                 if (!jsonResponse)
                                                 {
                                                     completionBlock(NULL, error);
                                                 }
                                                 
                                                 completionBlock(jsonResponse, NULL);
                                                 
                                             }];
    [task resume];
}

- (void)getFeedWithParams:(NSString *)page
          completionBlock:(APINetworkManagerCompletionBlock)completionBlock
{
    NSString *path = [NSString stringWithFormat:@"%@/%@/%@.json", [self baseURL], kFeedPath, page];
    NSURL *url = [NSURL URLWithString:path];
    
    [self fetchAPIRequestWithURL:url completionBlock:completionBlock];
}

@end
