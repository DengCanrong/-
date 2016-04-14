//
//  UIImage+image.m
//  02-彩票(自定义TabBaViewController)
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)

+(UIImage *)imageWithRenderImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
