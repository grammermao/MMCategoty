//
//  UIColor+MMColor.h
//  MMCategory
//
//  Created by yuchen_Mac on 2017/8/10.
//  Copyright © 2017年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MMColor)

+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color
                          alpha:(CGFloat)alpha;
@end
