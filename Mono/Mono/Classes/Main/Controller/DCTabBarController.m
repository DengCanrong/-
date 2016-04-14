//
//  DCTabBarController.m
//  Mono
//
//  Created by Mac on 16/4/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DCTabBarController.h"
#import "DCActiveViewController.h"
#import "DCDiscoveryViewController.h"
#import "DCNotificationViewController.h"
#import "MyViewController.h"
#import "DCNavigationController.h"
#import "DCMyNavigationController.h"

#import "DCTabBar.h"

@interface DCTabBarController () <DCTabBarDelegate>
/** 用来存放tabBarItem */
@property (nonatomic, strong)NSMutableArray *itemArray;
@end

@implementation DCTabBarController

- (NSMutableArray *)itemArray{
    if (_itemArray == nil) {
        _itemArray = [NSMutableArray array];
    }
    return _itemArray;
}


- (void)viewDidLoad{
    [super viewDidLoad];
//    添加所有的子控制器
    [self addAllChildVC];
//    移除系统的tabBar
    //[self.tabBar removeFromSuperview];
//    自定义tabBAr
    DCTabBar *tabBar = [[DCTabBar alloc]init];
    tabBar.backgroundColor = [UIColor blackColor];
    tabBar.alpha = 0.8;
    tabBar.frame = self.tabBar.frame;
    tabBar.itemArray = self.itemArray;
    tabBar.delegate = self;
    [self.view addSubview:tabBar];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    for (UIView *view in self.tabBar.subviews) {
        [view removeFromSuperview];
    }
}

#pragma mark - DCTabBarDelegate
- (void)tabBar:(DCTabBar *)tabBar selectBtnIndex:(NSInteger)index
{
    //    选中响应的子控制器
    self.selectedIndex = index;
}

// 添加所有的子控制器
- (void)addAllChildVC{
//    动态
    DCActiveViewController *activeVC = [[DCActiveViewController alloc] init];
    activeVC.view.backgroundColor = [UIColor greenColor];
    [self addOneChildVC:activeVC image:[UIImage imageNamed:@"nav-feed"] selImage:[UIImage imageNamed:@"nav-feed-active"] title:@"动态"];
    
//    发现
    DCDiscoveryViewController *disVC = [[DCDiscoveryViewController alloc] init];
    disVC.view.backgroundColor = [UIColor redColor];
    [self addOneChildVC:disVC image:[UIImage imageNamed:@"nav-discover"] selImage:[UIImage imageNamed:@"nav-discover-active"] title:@"发现"];
   
//    提醒
    DCNotificationViewController *notiVC = [[DCNotificationViewController alloc] init];
    notiVC.view.backgroundColor = [UIColor yellowColor];
    [self addOneChildVC:notiVC image:[UIImage imageNamed:@"nav-notification"] selImage:[UIImage imageNamed:@"nav-notification-active"] title:@"提醒"];
    
//    我
    MyViewController *myVC = [[MyViewController alloc] init];
    myVC.view.backgroundColor = [UIColor blueColor];
    [self addOneChildVC:myVC image:[UIImage imageNamed:@"nav-me"] selImage:[UIImage imageNamed:@"nav-me-active"] title:@"我"];
  
}

// 添加一个子控制器
- (void)addOneChildVC:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title{
    vc.navigationItem.title = title;
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selImage;
//    保存当前控制器的模型
    [self.itemArray addObject:vc.tabBarItem];
    
    if ([vc isKindOfClass:[MyViewController class]]) {
          DCMyNavigationController *nav = [[DCMyNavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:nav];
    }else{
      DCNavigationController *nav = [[DCNavigationController alloc] initWithRootViewController:vc];
      [self addChildViewController:nav];
    }
    
}

@end
