//
//  UIImage+image.h
//  02-彩票(自定义TabBaViewController)
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)
/**
 *  返回一张不经过渲染的图片
 */
+ (UIImage *)imageWithRenderImageName:(NSString *)imageName;
@end
