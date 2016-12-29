//
//  ViewControllerA1.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerA2.h"

@interface ViewControllerA2 ()

@end

@implementation ViewControllerA2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

#pragma mark - Action
///切换方向按钮事件
- (void)transfromOrientationsClick:(id)sender{

    if ([UIDevice currentDevice].orientation == UIDeviceOrientationPortrait) {
        
        [self interfaceOrientation:UIInterfaceOrientationLandscapeRight];
    }else{
        
        [self interfaceOrientation:UIInterfaceOrientationPortrait];
    }
}

///控制方向旋转
- (void)interfaceOrientation:(UIInterfaceOrientation)orientation
{
//    NSLog(@"允许使用强制将interface旋转成device的方向:%d", self.attemptRotationToDeviceOrientation);
    
    if(self.attemptRotationToDeviceOrientation)
    [UIViewController attemptRotationToDeviceOrientation];//强制将interface旋转成device的方向
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        
        SEL selector = NSSelectorFromString(@"setOrientation:");
        
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        
        [invocation setSelector:selector];
        
        [invocation setTarget:[UIDevice currentDevice]];
        
        int val = orientation;
        
        [invocation setArgument:&val atIndex:2];
        
        [invocation invoke];
    }
}

#pragma mark - LifeCycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    //返回上级视图前切回竖屏
    [self interfaceOrientation:UIInterfaceOrientationPortrait];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
