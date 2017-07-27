//
//  SunView.h
//  sb
//
//  Created by gab on 17/7/20.
//  Copyright © 2017年 gab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FatherView.h"

@protocol SunDelegate <FatherDelegate>
@property(nonatomic,strong) NSString *sunStr;
//协议继承，父类的协议方法子类的代理也能调，如果不会是协议继承，那只能用父类的代理去调协议方法
-(void)sunDelegateTest;

@end
@interface SunView : FatherView
@property(nonatomic,weak) id<SunDelegate>sunDelegate;
-(void)test;
@end

