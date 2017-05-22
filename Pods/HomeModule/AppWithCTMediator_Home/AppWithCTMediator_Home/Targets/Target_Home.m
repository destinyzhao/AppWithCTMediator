//
//  Target_Home.m
//  AppWithCTMediator_Home
//
//  Created by Destiny on 2017/5/19.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import "Target_Home.h"
#import "HomeViewController.h"
#import "HomeDetailViewController.h"

@implementation Target_Home

- (UIViewController *)Action_homeViewController:(NSDictionary *)params
{
    return  [[UINavigationController alloc]initWithRootViewController: [[HomeViewController alloc] init]];;
}

- (UIViewController *)Action_homeDetailViewController:(NSDictionary *)params
{
   HomeDetailViewController *viewController = [[HomeDetailViewController alloc] init];
    return viewController;
}

@end
