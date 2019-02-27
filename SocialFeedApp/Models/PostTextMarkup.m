//
//  PostTextMarkup.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostTextMarkup.h"

static NSString *const kLocationKey = @"location";
static NSString *const kLengthKey = @"length";
static NSString *const kLinkKey = @"link";

@implementation PostTextMarkup

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    PostTextMarkup *markup = [PostTextMarkup new];
    markup.location = [dictionary[kLocationKey] integerValue];
    markup.length = [dictionary[kLengthKey] integerValue];
    markup.link = dictionary[kLinkKey];
    
    return markup;
}

@end
