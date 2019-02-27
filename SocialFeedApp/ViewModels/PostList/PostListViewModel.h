//
//  PostListViewModel.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Post.h"
#import "PostCellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostListViewModel : NSObject

@property(nonatomic, strong) NSArray<Post *> *posts;

- (void)getPostListWithPage:(NSString *)page
                    success:(void(^)(void))success
                    failure:(void(^)(NSError *))failure;

- (PostCellViewModel *)cellViewModel:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
