//
//  PostCellViewModel.m
//  SocialFeedApp
//
//  Created by pc-laptop on 2/26/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostCellViewModel.h"
#import <UIKit/UIKit.h>

@implementation PostCellViewModel

- (void)setupPostAttributeString
{
    NSMutableAttributedString *mutableAttributeString = [[NSMutableAttributedString alloc] initWithString:self.post.text.plain];
    
    for (PostTextMarkup *markup in self.post.text.markups)
    {
       [mutableAttributeString addAttribute:NSLinkAttributeName value:markup.link range:NSMakeRange(markup.location, markup.length)];
    }
    
    self.postAttributeString = [mutableAttributeString copy];
}

@end
