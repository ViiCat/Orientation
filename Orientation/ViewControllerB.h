//
//  ViewControllerB.h
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerB : UIViewController

@property(nonatomic, strong)IBOutlet UIButton * btnGotoB1;
@property(nonatomic, strong)IBOutlet UISwitch * switchAttemptRotationToDeviceOrientation;

-(IBAction)pushToViewControllerB1:(id)sender;
@end
