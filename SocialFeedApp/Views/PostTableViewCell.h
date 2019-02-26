//
//  PostCollectionViewCell.h
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostCellViewModel.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *const kPostTableViewCellIdentifier;

@interface PostTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *accountNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *postText;
@property (weak, nonatomic) IBOutlet UIImageView *postImageView;
@property (weak, nonatomic) IBOutlet UIImageView *networkImageView;
@property (weak, nonatomic) IBOutlet UIImageView *authorImageView;
@property (weak, nonatomic) IBOutlet UILabel *postDateLabel;

- (void)configureWithModel:(PostCellViewModel *)model;

@end

NS_ASSUME_NONNULL_END
