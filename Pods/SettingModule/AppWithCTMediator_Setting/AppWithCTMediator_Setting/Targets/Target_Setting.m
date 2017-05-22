//
//  Target_Setting.m
//  AppWithCTMediator_Setting
//
//  Created by Destiny on 2017/5/22.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import "Target_Setting.h"
#import "SettingViewController.h"

@implementation Target_Setting

- (UIViewController *)Action_settingViewController:(NSDictionary *)params
{
    return  [[UINavigationController alloc]initWithRootViewController: [[SettingViewController alloc] init]];;
}

@end
