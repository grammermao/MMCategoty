//
//  UIColor+MMColor.m
//  MMCategory
//
//  Created by yuchen_Mac on 2017/8/10.
//  Copyright © 2017年 yc. All rights reserved.
//

#import "UIColor+MMColor.h"

@implementation UIColor (MMColor)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha{
    
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)return [UIColor clearColor];
    if ([cString hasPrefix:@"0X"])cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6)return [UIColor clearColor];

    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}
+ (UIColor *)colorWithHexString:(NSString *)color{
    
    return [self colorWithHexString:color alpha:1.0f];
}
@end
