//
//  DCTabBar.m
//  Mono
//
//  Created by Mac on 16/4/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DCTabBar.h"
#import "DCTabBarButton.h"

@interface DCTabBar ()
/** 上一个选中按钮 */
@property (nonatomic, weak)UIButton *preSelBtn;
@end

@implementation DCTabBar

- (void)setItemArray:(NSMutableArray *)itemArray{
    _itemArray = itemArray;
        //    添加按钮
    for (int i = 0; i < itemArray.count; i++) {
        //        创建按钮
        DCTabBarButton *btn = [DCTabBarButton buttonWithType:UIButtonTypeCustom];
        //        设置按钮的tag
        btn.tag = i;
        //        取出模型
        UITabBarItem *item = self.itemArray[i];
        
        //        设置图片
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        //        添加到tabBar
        [self addSubview:btn];
        
        //        监听按钮点击
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        if (i == 0) {
        //        默认选中第一个
            [self btnClick:btn];
        }
    }
}

//按钮点击
- (void)btnClick:(UIButton *)btn{
    //    让上一个按钮取消选中
    self.preSelBtn.selected = NO;
    //    让当前按钮成为选中状态
    btn.selected = YES;
    //    让当前按钮成为上一个选中按钮
    self.preSelBtn = btn;
    
    //    通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:selectBtnIndex:)]) {
        [self.delegate tabBar:self selectBtnIndex:btn.tag];
    }
}



//布局子控件frame
- (void)layoutSubviews{
    [super layoutSubviews];
    int count = (int)self.subviews.count;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = self.bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    for (int i = 0; i < count; i++) {
        x  = i * w;
        UIButton *btn = self.subviews[i];
        btn.frame = CGRectMake(x, y, w, h);
    }
}

@end


