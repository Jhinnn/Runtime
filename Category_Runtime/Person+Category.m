//
//  Person+Category.m
//  Category_Runtime
//
//  Created by 徐佳鹏 on 2020/7/16.
//  Copyright © 2020 徐佳鹏. All rights reserved.
//

#import "Person+Category.h"

@implementation Person (Category)



- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, "name", name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)getName {
    return objc_getAssociatedObject(self, "name");
}

- (NSString *)getPersonName {
    return @"张三";
}
- (void)setPersonName:(NSString *)name age:(NSInteger)age {
    self.name = @"李四";
}
- (void)setPersonAge:(NSInteger)age {
    
}

@end
