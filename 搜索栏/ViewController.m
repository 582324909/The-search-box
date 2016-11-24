//
//  ViewController.m
//  搜索栏
//
//  Created by 张伟伟 on 16/8/23.
//  Copyright © 2016年 张伟伟. All rights reserved.
//

#import "ViewController.h"
#import "INSSearchBar.h"

@interface ViewController ()<INSSearchBarDelegate>

@property (nonatomic, strong) INSSearchBar *searchBarWithDelegate;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.000 green:0.418 blue:0.673 alpha:1.000];
    UILabel *descriptionLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 120.0, CGRectGetWidth(self.view.bounds) - 40.0, 20.0)];
    descriptionLabel2.textColor = [UIColor whiteColor];
    descriptionLabel2.font = [UIFont fontWithName:@"AvenirNext-Regular" size:16.0];
    descriptionLabel2.text = @"搜索栏";
    
    [self.view addSubview:descriptionLabel2];
    
    self.searchBarWithDelegate = [[INSSearchBar alloc] initWithFrame:CGRectMake(20.0, 140.0, 44.0, 34.0)];
    self.searchBarWithDelegate.delegate = self;
    
    [self.view addSubview:self.searchBarWithDelegate];
}

#pragma mark - search bar delegate

- (CGRect)destinationFrameForSearchBar:(INSSearchBar *)searchBar
{
    return CGRectMake(20.0, 140.0, CGRectGetWidth(self.view.bounds) - 40.0, 34.0);
}

- (void)searchBar:(INSSearchBar *)searchBar willStartTransitioningToState:(INSSearchBarState)destinationState
{
    // Do whatever you deem necessary.
}

- (void)searchBar:(INSSearchBar *)searchBar didEndTransitioningFromState:(INSSearchBarState)previousState
{
    // Do whatever you deem necessary.
}

- (void)searchBarDidTapReturn:(INSSearchBar *)searchBar
{
    // Do whatever you deem necessary.
    // Access the text from the search bar like searchBar.searchField.text
}

- (void)searchBarTextDidChange:(INSSearchBar *)searchBar
{
    // Do whatever you deem necessary.
    // Access the text from the search bar like searchBar.searchField.text
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
