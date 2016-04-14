//
//  DCMyNavigationController.m
//  Mono
//
//  Created by Mac on 16/4/12.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DCMyNavigationController.h"

@interface DCMyNavigationController ()

@end

@implementation DCMyNavigationController

+(void)initialize{
    //    要获取那个类下的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    //    设置背景图片
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    //    设置导航条的文字属性
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [bar setTitleTextAttributes:dict];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
