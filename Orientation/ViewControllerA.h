//
//  ViewControllerA.h
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerA : UIViewController

@property(nonatomic, strong)IBOutlet UIButton * btnGotoA1;

///强制将interface旋转成device方向的开关控件
@property(nonatomic, strong)IBOutlet UISwitch * switchAttemptRotationToDeviceOrientation;

-(IBAction)pushToViewControllerA1;
@end
