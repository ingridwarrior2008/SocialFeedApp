//
//  PostAuthor.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostAuthor.h"

static NSString *const kAccountKey = @"account";
static NSString *const kIsVerifiedKey = @"is-verified";
static NSString *const kNameKey = @"name";
static NSString *const kPictureKey = @"picture-link";

@implementation PostAuthor

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;
{
    PostAuthor *author = [PostAuthor new];
    author.account = dictionary[kAccountKey];
    author.isVerified = dictionary[kIsVerifiedKey];
    author.name = dictionary[kNameKey];
    author.pictureLink = dictionary[kPictureKey];
    
    return author;
}

@end
