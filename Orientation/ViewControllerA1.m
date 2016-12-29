//
//  ViewControllerA1.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/28.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerA1.h"
#import "ViewControllerA2.h"

@interface ViewControllerA1 ()

@end

@implementation ViewControllerA1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Action
///GotoA2按钮点击
- (void)pushToViewControllerA2:(id)sender{
    
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewControllerA2 * a2 = [stb instantiateViewControllerWithIdentifier:@"ViewControllerA2"];
    
    a2.attemptRotationToDeviceOrientation = self.attemptRotationToDeviceOrientation;
    
    [self.navigationController pushViewController:a2 animated:YES];
}

#pragma mark - LifeCycle
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
