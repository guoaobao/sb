//
//  SunView.m
//  sb
//
//  Created by gab on 17/7/20.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "SunView.h"

@implementation SunView


-(void)test
{
    if ([self.sunDelegate respondsToSelector:@selector(sunDelegateTest)]){
        
        [self.sunDelegate sunDelegateTest];
    }
    
    if ([self.sunDelegate respondsToSelector:@selector(fatherDelegateTest)]) {
        [self.sunDelegate fatherDelegateTest];
    }
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
@end
