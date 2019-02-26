//
//  ViewController.m
//  SocialFeedApp
//
//  Created by Ingrid Guerrero on 2/25/19.
//  Copyright © 2019 Ingrid Guerrero. All rights reserved.
//

#import "PostListViewController.h"
#import "PostListViewModel.h"
#import "PostTableViewCell.h"

#import <SafariServices/SafariServices.h>
#import <SVProgressHUD/SVProgressHUD.h>


@interface PostListViewController ()

@property(nonatomic)PostListViewModel *postListViewModel;

@end

@implementation PostListViewController

#pragma mark - Lifecyle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewModel];
    [self loadPostListWithPage:@"1"];
}

#pragma mark - Private methods

- (void)setupViewModel
{
    self.postListViewModel = [PostListViewModel new];
}

- (void)loadPostListWithPage:(NSString *)page
{
    [SVProgressHUD show];
    __weak PostListViewController *weakSelf = self;
    [self.postListViewModel getPostListWithPage:page
                                        success:^{
        __strong PostListViewController *strongSelf = weakSelf;
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
            [strongSelf.tableView reloadData];
        });
    }
                                        failure:^(NSError * _Nonnull error)
     {
         dispatch_async(dispatch_get_main_queue(), ^{
             [SVProgressHUD dismiss];
         });
     }];
}

#pragma mark - TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.postListViewModel.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kPostTableViewCellIdentifier forIndexPath:indexPath];
    [cell configureWithModel:[self.postListViewModel cellViewModel:indexPath.row]];
    return cell;
}


#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSURL *URL = [NSURL URLWithString:self.postListViewModel.posts[indexPath.row].link];
    
    SFSafariViewController *webView = [[SFSafariViewController alloc] initWithURL:URL];
 
    [self presentViewController:webView animated:YES completion:NULL];
}

@end
