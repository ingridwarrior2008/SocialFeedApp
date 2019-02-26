//
//  Post.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PostAuthor.h"
#import "PostAttachment.h"
#import "PostText.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, NetworkType) {
    Twitter = 0,
    Facebook,
    Instagram,
    None
};

@interface Post : NSObject

@property(nonatomic, assign) NetworkType networkType;
@property(nonatomic, strong) NSString *network;
@property(nonatomic, strong) NSString *networkIcon;
@property(nonatomic, strong) NSString *link;
@property(nonatomic, strong) NSDate *date;
@property(nonatomic, strong) PostAuthor *author;
@property(nonatomic, strong) PostText *text;
@property(nonatomic, strong) PostAttachment *attachment;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
