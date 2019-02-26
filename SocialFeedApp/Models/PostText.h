//
//  PostText.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PostTextMarkup.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostText : NSObject

@property(nonatomic, strong) NSString *plain;
@property(nonatomic, strong) NSArray<PostTextMarkup *> *markups;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
