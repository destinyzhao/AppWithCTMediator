//
//  CTMediator+SettingAction.m
//  AppWithCTMediator_Setting
//
//  Created by Destiny on 2017/5/22.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import "CTMediator+SettingAction.h"

//  字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_Setting = @"Setting";
//  字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_SettingController = @"settingViewController";


@implementation CTMediator (SettingAction)
    
- (UIViewController *)mediator_settingViewController
    {
        UIViewController *viewController = [self performTarget:kCTMediatorTarget_Setting
                                                        action:kCTMediatorActionNativTo_SettingController
                                                        params:nil shouldCacheTarget:NO];
        if ([viewController isKindOfClass:[UIViewController class]]) {
            // view controller 交付出去之后，可以由外界选择是push还是present
            return viewController;
        } else {
            // 这里处理异常场景，具体如何处理取决于产品
            NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
            return [[UIViewController alloc] init];
        }
    }


@end
