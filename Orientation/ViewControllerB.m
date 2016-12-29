//
//  ViewControllerB.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "ViewControllerB.h"
#import "ViewControllerB1.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Action
-(void)pushToViewControllerB1:(id)sender{
    
    UIStoryboard * stb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewControllerB1 * b1 = [stb instantiateViewControllerWithIdentifier:@"ViewControllerB1"];
    
    b1.attemptRotationToDeviceOrientation = self.switchAttemptRotationToDeviceOrientation.on;
    
    [b1 setHidesBottomBarWhenPushed:YES];
    
    [self.navigationController pushViewController:b1 animated:YES];
}

#pragma mark - LifeCycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
