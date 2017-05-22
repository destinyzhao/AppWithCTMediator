//
//  HomeViewController.m
//  AppWithCTMediator_Home
//
//  Created by Destiny on 2017/5/19.
//  Copyright © 2017年 Destiny. All rights reserved.
//

#import "HomeViewController.h"
#import <Masonry/Masonry.h>
#import "CTMediator+HomeAction.h"

@interface HomeViewController ()
    
@property (strong, nonatomic) UIButton *pushButton;

@end

@implementation HomeViewController
    
- (UIButton *)pushButton
{
    if (!_pushButton) {
        _pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushButton setTitle:@"详情页面" forState:UIControlStateNormal];
        [_pushButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushButton setBackgroundColor:[UIColor grayColor]];
        [_pushButton addTarget:self action:@selector(pushDetail) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    
    [self initPushButton];
}
    
- (void)initPushButton
{
    [self.view addSubview:self.pushButton];
    [self.pushButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(40);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (void)pushDetail
{
     UIViewController *viewController = [[CTMediator sharedInstance] mediator_homeDetailViewController];
     [viewController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:viewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
