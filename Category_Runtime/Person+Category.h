//
//  Person+Category.h
//  Category_Runtime
//
//  Created by 徐佳鹏 on 2020/7/16.
//  Copyright © 2020 徐佳鹏. All rights reserved.
//


#import "Person.h"
#import <objc/runtime.h>
@interface Person (Category)

@property (nonatomic, copy) NSString *name;

- (NSString *)getPersonName;
- (void)setPersonName:(NSString *)name age:(NSInteger)age;
- (void)setPersonAge:(NSInteger)age;

@end

