//
//  PostAttachment.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostAttachment : NSObject

@property(nonatomic, strong) NSString *pictureLink;
@property(nonatomic, assign) NSInteger width;
@property(nonatomic, assign) NSInteger height;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
