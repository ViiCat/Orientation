//
//  ViewControllerA.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerA.h"
#import "ViewControllerA1.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

#pragma mark - Action
///跳转A1
-(void)pushToViewControllerA1{
    
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewControllerA1 * a1 = [stb instantiateViewControllerWithIdentifier:@"ViewControllerA1"];
    
    //设置是否使用
    a1.attemptRotationToDeviceOrientation = self.switchAttemptRotationToDeviceOrientation.on;
    
    [a1 setHidesBottomBarWhenPushed:YES];
    
    [self.navigationController pushViewController:a1 animated:YES];
}

#pragma mark - LifeCycle
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
