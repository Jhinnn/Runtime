//
//  UIImageView+Runtime.h
//  Category_Runtime
//
//  Created by 徐佳鹏 on 2020/7/22.
//  Copyright © 2020 徐佳鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Runtime)

+ (instancetype)colorWithFloatWhite:(CGFloat)white withFloatAlphe:(CGFloat)alphe;

@end

NS_ASSUME_NONNULL_END
