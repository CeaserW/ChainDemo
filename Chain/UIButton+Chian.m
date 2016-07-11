//
//  UIButton+Chian.m
//  Chain
//
//  Created by 汪辉 on 16/7/11.
//  Copyright © 2016年 汪辉. All rights reserved.
//

#import "UIButton+Chian.h"

@implementation UIButton (Chian)
- (UIButton *(^)(CGRect))c_frame
{
    return ^UIButton *(CGRect r){
        self.frame = r ;
        return self;
    };
}
- (UIButton *(^)(NSString *, ...))c_titleWithControlState
{
    return ^UIButton *(NSString *s ,...){
        va_list arguments;
        va_start(arguments, s);
        UIControlState state = 0;
        [self setTitle:s forState:state];
        while ((state = va_arg(arguments, UIControlState))) {
            [self setTitle:s forState:state];
        }
        va_end(arguments);
        return self;
    };
}
- (UIButton *(^)(UIColor *, ...))c_titleColorWithControlState
{
   return ^UIButton *(UIColor *c ,...){
        va_list arguments;
        va_start(arguments, c);
        UIControlState state = 0;
       [self setTitleColor:c forState:state];
        while ((state = va_arg(arguments, UIControlState))) {
            [self setTitleColor:c forState:state];
        }
        va_end(arguments);
        return self;
    };
}

- (UIButton *(^)(id, SEL, UIControlEvents))c_addTarget
{
    return ^UIButton *(id a , SEL sel, UIControlEvents events){
    
        [self addTarget:a action:sel forControlEvents:events];
        return self;
    };

}

- (UIButton *(^)(UIColor *))c_backGroundColor
{
    return ^UIButton *(UIColor *c){
        self.backgroundColor = c;
        return self;
    };}
@end
