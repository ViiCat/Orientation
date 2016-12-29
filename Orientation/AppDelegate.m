//
//  AppDelegate.m
//  Orientation
//
//  Created by Jason.Liu on 16/12/1.
//  Copyright © 2016年 ViiCat.com. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
    
    //首先获取出当前窗口的所有子视图
    UIWindow * wd = [UIApplication sharedApplication].keyWindow;
    
    NSArray * arrVC = wd.rootViewController.childViewControllers;
    
    
    
    ///获取到TabA
    UIViewController * TabA = [arrVC firstObject];
    
    NSArray * arrayViewControllerA = TabA.childViewControllers;
    
    ///获取当前屏幕面显示的VC
    UIViewController * currentA = [arrayViewControllerA lastObject];
    
    ///A2条件满足允许横竖屏
    if ([currentA isKindOfClass:NSClassFromString(@"ViewControllerA2")]) {
        
        return UIInterfaceOrientationMaskLandscapeRight | UIInterfaceOrientationMaskPortrait;
    }
    
    
    
    UIViewController * TabB = arrVC[1];
    
    NSArray * arrayViewControllerB = TabB.childViewControllers;
    
    UIViewController * currentB = [arrayViewControllerB lastObject];
    
    ///B2条件满足允许横竖屏
    if ([currentB isKindOfClass:NSClassFromString(@"ViewControllerB2")]) {
        
        return UIInterfaceOrientationMaskLandscapeRight;
    }
    
    return UIInterfaceOrientationMaskPortrait;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
