//
//  PostAttachment.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostAttachment.h"

static NSString *const kPictureLinkKey = @"picture-link";
static NSString *const kWidthKey = @"width";
static NSString *const kHeightKey = @"height";

@implementation PostAttachment

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    PostAttachment *attachment = [PostAttachment new];
    attachment.pictureLink = dictionary[kPictureLinkKey];
    attachment.width = (NSInteger)dictionary[kWidthKey];
    attachment.height = (NSInteger)dictionary[kHeightKey];

    return attachment;
}

@end
