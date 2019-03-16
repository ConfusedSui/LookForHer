//
//  TabRootViewController.m
//  LookForHer
//
//  Created by 于礼 on 2019/3/17.
//  Copyright © 2019 于礼. All rights reserved.
//

#import "TabRootViewController.h"
#import "LHHomePageVC.h"
#import "LHRankVC.h"
#import "LHActivityVC.h"
#import "LHMessageListVC.h"
#import "LHPersonCenterVC.h"

@interface TabRootViewController ()

@end

@implementation TabRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addVC];
}

-(void)addVC{
    self.view.backgroundColor = [UIColor whiteColor];
    
    //首页
    LHHomePageVC *homePage = [[LHHomePageVC alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:homePage];
    nav1.tabBarItem.title = @"首页";
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"home-L"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.tabBarItem.image = [UIImage imageNamed:@"home-H"];
    [nav1.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [nav1.tabBarItem setImageInsets:UIEdgeInsetsMake(-3, 0, 3, 0)];
    
    //排行榜
    LHRankVC *vc2 = [[LHRankVC alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    nav2.tabBarItem.title = @"视频";
    nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"video-L"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.image = [UIImage imageNamed:@"video-H"];
    [nav2.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [nav2.tabBarItem setImageInsets:UIEdgeInsetsMake(-3, 0, 3, 0)];
    
    //活动
    LHActivityVC *vc3 = [[LHActivityVC alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    nav3.tabBarItem.title = @"行情";
    nav3.tabBarItem.selectedImage = [[UIImage imageNamed:@"transaction-L"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.tabBarItem.image = [UIImage imageNamed:@"transaction-H"];
    [nav3.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [nav3.tabBarItem setImageInsets:UIEdgeInsetsMake(-3, 0, 3, 0)];
    
    
    //消息
    
    LHMessageListVC *vc4 = [[LHMessageListVC alloc] init];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    nav4.tabBarItem.title = @"资讯";
    nav4.tabBarItem.selectedImage = [[UIImage imageNamed:@"message-L"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav4.tabBarItem.image = [UIImage imageNamed:@"message-H"];
    [nav4.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [nav4.tabBarItem setImageInsets:UIEdgeInsetsMake(-3, 0, 3, 0)];
    
    
    //我的
    LHPersonCenterVC *vc5 = [[LHPersonCenterVC alloc] init];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:vc5];
    
    nav5.tabBarItem.title = @"我的";
    nav5.tabBarItem.selectedImage = [[UIImage imageNamed:@"me-L"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav5.tabBarItem.image = [UIImage imageNamed:@"me-H"];
    [nav5.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [nav5.tabBarItem setImageInsets:UIEdgeInsetsMake(-3, 0, 3, 0)];
    
    //选中与未选中的设置
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:11.0F], NSForegroundColorAttributeName : [UIColor blackColor]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:11.0F],  NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateNormal];
    
    self.viewControllers = @[nav1,nav2,nav3,nav4,nav5];
    
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
