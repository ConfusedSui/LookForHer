//
//  BaseViewController.h
//  LookForHer
//
//  Created by 于礼 on 2019/3/17.
//  Copyright © 2019 于礼. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UIView * customNav;//背景
@property (nonatomic, strong) UIButton *leftBarBtn;//返回按钮
@property (nonatomic, strong) UIButton *rightBarBtn;//右边按钮
@property (nonatomic, strong) UILabel *titleStrLable;//中间标题

//左右导航响应事件
- (void) leftBarButtonAction:(id)sender;
- (void) rightBarButtonAction:(id)sender;

@end


