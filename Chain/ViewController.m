//
//  ViewController.m
//  Chain
//
//  Created by 汪辉 on 16/7/11.
//  Copyright © 2016年 汪辉. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Chian.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.c_backGroundColor([UIColor grayColor])
          .c_frame(CGRectMake(0, 0, 100, 100))
          .c_titleColorWithControlState([UIColor redColor],nil)
          .c_addTarget(self,@selector(nslog),UIControlEventTouchUpInside);
    
    
    
    [self.view addSubview:button];
}
- (void)nslog
{
    NSLog(@"click the button");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
