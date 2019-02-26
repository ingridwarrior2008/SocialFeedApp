//
//  PostAuthor.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostAuthor : NSObject

@property(nonatomic, strong) NSString *account;
@property(nonatomic, assign) BOOL isVerified;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *pictureLink;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
