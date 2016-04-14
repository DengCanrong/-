//
//  DCDiscoveryViewController.m
//  Mono
//
//  Created by Mac on 16/4/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DCDiscoveryViewController.h"
#import "UIImage+image.h"

@implementation DCDiscoveryViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIImage *image = [UIImage imageWithRenderImageName:@"icon-search-v3"];
//    设置导航条左侧内容
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:0 target:self action:@selector(leftClick)];
}

//点击导航条左侧时调用
- (void)leftClick{

}
@end
