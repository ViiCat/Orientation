//
//  ViewControllerA1.h
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerA2 : UIViewController

///是否允许使用强制将interface旋转成device的方向
@property(nonatomic, assign)BOOL attemptRotationToDeviceOrientation;

///切换方向按钮
@property(nonatomic, strong)IBOutlet UIButton * btnTransformOrientations;

- (IBAction)transfromOrientationsClick:(id)sender;
@end
