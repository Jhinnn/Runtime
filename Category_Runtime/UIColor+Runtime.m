//
//  UIImageView+Runtime.m
//  Category_Runtime
//
//  Created by 徐佳鹏 on 2020/7/22.
//  Copyright © 2020 徐佳鹏. All rights reserved.
//

#import "UIColor+Runtime.h"

@implementation UIColor (Runtime)

+ (void)load {
    
    Method method = class_getClassMethod(self, @selector(colorWithWhite:alpha:));
    Method methodFloat = class_getClassMethod(self, @selector(colorWithFloatWhite:withFloatAlphe:));
    
    method_exchangeImplementations(method, methodFloat);
}


+ (instancetype)colorWithFloatWhite:(CGFloat)white withFloatAlphe:(CGFloat)alphe {
    
    UIColor *color = [self colorWithFloatWhite:white withFloatAlphe:alphe];
    
    if (white > 1 || alphe > 1) {
        NSLog(@"色值和透明度应该在0-1之间，包括0和1");
    }
    
    return color;
}
@end
