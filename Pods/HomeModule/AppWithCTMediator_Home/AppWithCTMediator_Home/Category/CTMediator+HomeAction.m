//
//  CTMediator+HomeAtcion.m
//  AppWithCTMediator_Home
//
//  Created by Destiny on 2017/5/19.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import "CTMediator+HomeAction.h"

//  字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_Home = @"Home";
//  字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_HomeViewController = @"homeViewController";
NSString * const kCTMediatorActionNativTo_HomeDetailViewController = @"homeDetailViewController";

@implementation CTMediator (HomeAction)

- (UIViewController *)mediator_homeViewController
{
    UIViewController *viewController = [self performTarget:kCTMediatorTarget_Home
                                                    action:kCTMediatorActionNativTo_HomeViewController
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

- (UIViewController *)mediator_homeDetailViewController
{
    UIViewController *viewController = [self performTarget:kCTMediatorTarget_Home
                                                    action:kCTMediatorActionNativTo_HomeDetailViewController
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
