//
//  Target_Home.h
//  AppWithCTMediator_Home
//
//  Created by Destiny on 2017/5/19.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_Home : NSObject

- (UIViewController *)Action_homeViewController:(NSDictionary *)params;

- (UIViewController *)Action_homeDetailViewController:(NSDictionary *)params;

@end
