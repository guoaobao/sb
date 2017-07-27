//
//  FatherView.h
//  sb
//
//  Created by gab on 17/7/20.
//  Copyright © 2017年 gab. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FatherDelegate <NSObject>

@property(nonatomic,strong) NSString *str;
-(void)fatherDelegateTest;

@end

@interface FatherView : UIView

@property(nonatomic,weak) id<FatherDelegate>delegate;

@end


