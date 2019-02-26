//
//  PostTextMarkup.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostTextMarkup : NSObject

@property(nonatomic, assign) NSInteger location;
@property(nonatomic, assign) NSInteger length;
@property(nonatomic, strong) NSString *link;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
