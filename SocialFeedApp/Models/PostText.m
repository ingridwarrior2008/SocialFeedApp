//
//  PostText.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostText.h"

static NSString *const kPlainkKey = @"plain";
static NSString *const kMarkupsKey = @"markup";

@implementation PostText

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    PostText *postText = [PostText new];
    postText.plain = dictionary[kPlainkKey];

    if ([dictionary[kMarkupsKey] isKindOfClass:[NSArray class]])
    {
        NSMutableArray<PostTextMarkup *> *markups = [NSMutableArray new];
        
        for (NSDictionary *markup in dictionary[kMarkupsKey])
        {
            PostTextMarkup *textMarkup = [PostTextMarkup initWithDictionary:markup];
            [markups addObject:textMarkup];
        }
        
        postText.markups = [markups copy];
    }
    
    return postText;
}

@end
