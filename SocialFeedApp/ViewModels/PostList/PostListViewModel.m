//
//  PostListViewModel.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostListViewModel.h"
#import "APINetworkManager.h"

@implementation PostListViewModel

- (void)getPostListWithPage:(NSString *)page
                    success:(void(^)(void))success
                    failure:(void(^)(NSError *))failure
{
    APINetworkManager *networkManager = [[APINetworkManager alloc] initWithSession:[NSURLSession sharedSession]];
    
     __weak PostListViewModel *weakSelf = self;
    [networkManager getFeedWithParams:page
                      completionBlock:^(NSArray * _Nullable results, NSError * _Nullable error) {
                          
                          __strong PostListViewModel *strongSelf = weakSelf;
                          
                          if (error)
                          {
                              failure(error);
                          }
                          
                          if (results)
                          {
                              NSMutableArray *postArray = [NSMutableArray new];
                              
                              for (NSDictionary *postDictionary in results)
                              {
                                  [postArray addObject:[Post initWithDictionary:postDictionary]];
                              }
                              
                              strongSelf.posts = [postArray copy];
                              success();
                          }
                      }];
}

- (PostCellViewModel *)cellViewModel:(NSInteger)row
{
    PostCellViewModel *postViewModel = [PostCellViewModel new];
    postViewModel.post = self.posts[row];
    return postViewModel;
}

@end
