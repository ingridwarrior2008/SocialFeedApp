//
//  PostCollectionViewCell.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "NSDate+Date.h"

NSString *const kPostTableViewCellIdentifier = @"PostTableViewCell";
NSString *const kCheckMarkIcon = @"✓";


@implementation PostTableViewCell

- (void)configureWithModel:(PostCellViewModel *)model
{
    Post *post = model.post;

    if (post.author.isVerified)
    {
        self.accountNameLabel.text = [NSString stringWithFormat:@"%@ %@", post.author.name, kCheckMarkIcon];
    }
    else
    {
        self.accountNameLabel.text = post.author.name;
    }
    
    self.authorNameLabel.text = post.author.account;
    self.postText.text = post.text.plain;
    self.postDateLabel.text = [post.date postformatDate];
    
    [self.authorImageView sd_setImageWithURL:[NSURL URLWithString:post.author.pictureLink]];
    [self.postImageView sd_setImageWithURL:[NSURL URLWithString:post.attachment.pictureLink]];
    
    self.networkImageView.image = [UIImage imageNamed:post.network];
}

@end
