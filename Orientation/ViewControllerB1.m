//
//  ViewControllerB1.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/28.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerB1.h"
#import "ViewControllerB2.h"

@interface ViewControllerB1 ()

@end

@implementation ViewControllerB1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Action
- (void)pushToViewControllerB2:(id)sender{
    
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewControllerB2 * b2 = [stb instantiateViewControllerWithIdentifier:@"ViewControllerB2"];
    
    b2.attemptRotationToDeviceOrientation = self.attemptRotationToDeviceOrientation;
    
    [self.navigationController pushViewController:b2 animated:YES];
}

#pragma mark - LifeCycle
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
