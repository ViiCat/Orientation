//
//  ViewControllerB1.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/2.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerB2.h"

@interface ViewControllerB2 ()

@end

@implementation ViewControllerB2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Action
///控制方向旋转
- (void)interfaceOrientation:(UIInterfaceOrientation)orientation
{
    NSLog(@"是否允许使用强制将interface旋转成device的方向:%d", self.attemptRotationToDeviceOrientation);

    if(self.attemptRotationToDeviceOrientation)
        [UIViewController attemptRotationToDeviceOrientation];//强制将interface旋转成device的方向
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector             = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val                  = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}

#pragma mark - LifeCycle
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self interfaceOrientation:UIInterfaceOrientationLandscapeRight];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self interfaceOrientation:UIInterfaceOrientationPortrait];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
