//
//  UIButton+Chian.h
//  Chain
//
//  Created by 汪辉 on 16/7/11.
//  Copyright © 2016年 汪辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Chian)
/**
 - (void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
 */
- (UIButton*(^)(CGRect r))c_frame;
/**
 *  参数不固定，大多数情况下UIControlState 都是normal，所以设了默认值nomal，和链式编程无关
 */
- (UIButton*(^)(NSString *s,...))c_titleWithControlState;
- (UIButton*(^)(UIColor *c,...))c_titleColorWithControlState;
- (UIButton *(^)(id a,SEL sel,UIControlEvents v))c_addTarget;
- (UIButton *(^)(UIColor *c))c_backGroundColor;
@end
