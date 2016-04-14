//
//  DCNavigationController.m
//  Mono
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DCNavigationController.h"

@implementation DCNavigationController
+(void)initialize{
//    要获取那个类下的导航条
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[DCNavigationController class]]];
    
//    设置导航条的文字属性
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor blackColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [bar setTitleTextAttributes:dict];
}
@end
