//
//  AppDelegate.m
//  sb
//
//  Created by gab on 17/7/20.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "AppDelegate.h"
#import "SunView.h"
#import "ViewController.h"
@interface AppDelegate ()<SunDelegate>//实现协议

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//     Override point for customization after application launch.
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor redColor];
    ViewController *vc=[[ViewController alloc]initWithNibName:NSStringFromClass([ViewController class]) bundle:nil];
    self.window.rootViewController=vc;
    [self.window makeKeyAndVisible];
    
//    vc.view.frame=CGRectMake(0, 10, 200, 300);
    
    SunView *v=[[SunView alloc]init];
    v.sunDelegate=self;
    [v test];
    self.str=@"";//str是父类的协议属性
    self.sunStr=@"";//sunStr是协议属性
    //这俩个属性可以调1.因为实现了SunDelegate协议，2这个协议继承与FatherDelegate
    return YES;
}

-(void)sunDelegateTest
{
//协议方法

}

-(void)fatherDelegateTest
{
//协议方法

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
