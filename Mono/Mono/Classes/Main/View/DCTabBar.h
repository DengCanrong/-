//
//  DCTabBar.h
//  Mono
//
//  Created by Mac on 16/4/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DCTabBar;
@protocol DCTabBarDelegate <NSObject>

- (void)tabBar:(DCTabBar *)tabBar selectBtnIndex:(NSInteger)index;

@end

@interface DCTabBar : UIView
/** 用来存放tabBarItem */
@property (nonatomic, strong)NSMutableArray *itemArray;

/** 代理属性 */
@property (nonatomic, weak)id <DCTabBarDelegate> delegate;

@end
