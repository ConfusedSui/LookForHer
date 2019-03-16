//
//  BaseViewController.m
//  LookForHer
//
//  Created by 于礼 on 2019/3/17.
//  Copyright © 2019 于礼. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavigationBar];
    _leftBarBtn.hidden = YES;
    _rightBarBtn.hidden = YES;
    
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}


- (void) initNavigationBar{
    //    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHex:SYSTEMCOLOR]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navibmg"] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftBarBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.rightBarBtn];
    
    self.navigationItem.titleView = self.titleStrLable;
    
    self.navigationController.navigationBar.translucent = NO;
}

//导航控制器相关
-(void)setTitle:(NSString *)title{
    //    [super setTitle:title];
    _titleStrLable.text = title;
}
-(UIView *)customNav{
    if (_customNav == nil) {
        _customNav = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 64)];
        _customNav.backgroundColor = [UIColor redColor];
        _customNav.userInteractionEnabled = YES;
    }
    return _customNav;
}
-(UIButton *)leftBarBtn{
    if(_leftBarBtn == nil){
        _leftBarBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _leftBarBtn.frame = CGRectMake(0, 0, 35, 30);
        //        _leftBarBtn.hidden = YES;
        [_leftBarBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [_leftBarBtn setTitle:@"" forState:UIControlStateNormal];
        _leftBarBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _leftBarBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_leftBarBtn addTarget:self action:@selector(leftBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBarBtn;
}

-(UIButton *)rightBarBtn{
    if(_rightBarBtn == nil){
        _rightBarBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _rightBarBtn.frame = CGRectMake(0, 0, 35, 30);
        //        _rightBarBtn.hidden = YES;
        [_rightBarBtn setTitle:@"确定" forState:UIControlStateNormal];
        _rightBarBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _rightBarBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [_rightBarBtn addTarget:self action:@selector(rightBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightBarBtn;
}

-(UILabel *)titleStrLable{
    if(_titleStrLable == nil){
        _titleStrLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
        [_titleStrLable setTextColor:[UIColor blackColor]];
        _titleStrLable.font = [UIFont systemFontOfSize:18];
        _titleStrLable.textAlignment = NSTextAlignmentCenter;
    }
    return _titleStrLable;
}

- (void)leftBarButtonAction:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightBarButtonAction:(id)sender{
    NSLog(@"hahaha");
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (BOOL)prefersStatusBarHidden
{
    return NO;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return  UIInterfaceOrientationPortrait;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
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
