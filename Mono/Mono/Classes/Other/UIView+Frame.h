//
//  UIView+Frame.h
//  彩票
//
//  Created by apple on 20/3/26.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/**
 * 1.在分类当中, 如果是要添加属性的话, 必须得要重写set方法,get方法.
   2.在分类当中添加属性之后, 会自动生成set方法,get方法.但是并不会自动生成带有下划线的成圆属性.
*/

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;



@end
