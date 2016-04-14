//
//  MyViewController.m
//  Mono
//
//  Created by Mac on 16/4/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "MyViewController.h"
#import "UIImage+image.h"

@implementation MyViewController

- (void)viewDidAppear:(BOOL)animated{
//    设置导航条右侧的内容
    UIImage *image = [UIImage imageWithRenderImageName:@"icon_setting"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:0 target:self action:@selector(setting)];
}


//当点击导航条右侧的设置按钮时调用
- (void)setting{
    
}
@end
