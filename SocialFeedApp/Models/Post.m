//
//  Post.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "Post.h"

static NSString *const kNetworkKey = @"network";
static NSString *const kLinkKey = @"link";
static NSString *const kDateKey = @"date";
static NSString *const kAuthorKey = @"author";
static NSString *const kTextKey = @"text";
static NSString *const kAttachmentKey = @"attachment";
static NSString *const kDateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";

static NSString *const kTwitter = @"twitter";
static NSString *const kFacebook = @"facebook";
static NSString *const kInstagram = @"instagram";


@implementation Post

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    Post *post = [Post new];
    post.network = dictionary[kNetworkKey];
    post.networkType = [self convertToNetworkType:post.network];
    post.link = dictionary[kLinkKey];

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:kDateFormat];
    post.date = [dateFormatter dateFromString:dictionary[kDateKey]];
    
    post.author = [PostAuthor initWithDictionary:dictionary[kAuthorKey]];
    post.text = [PostText initWithDictionary:dictionary[kTextKey]];
    post.attachment = [PostAttachment initWithDictionary:dictionary[kAttachmentKey]];
    
    return post;
}

+ (NetworkType)convertToNetworkType:(NSString *)network
{
    if ([network isEqualToString:kTwitter])
    {
        return Twitter;
    }
    else if ([network isEqualToString:kFacebook])
    {
        return Facebook;
    }
    else if ([network isEqualToString:kInstagram])
    {
        return Instagram;
    }
    
    return None;
}

@end
