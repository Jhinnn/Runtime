//
//  ViewController.m
//  Category_Runtime
//
//  Created by 徐佳鹏 on 2020/7/16.
//  Copyright © 2020 徐佳鹏. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Person+Category.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.给分类添加属性
    Person *person = [[Person alloc] init];
    person.name = @"张三";
    NSLog(@"%@",[person getPersonName]);
    
    
    //2.获得系统内部类的成员变量
    unsigned int propertyCount = 0;
    Ivar *ivarlist = class_copyIvarList([UIButton class], &propertyCount);
    for (int i = 0; i < 10; i++) {
        NSString *propertyName = @(ivar_getName(ivarlist[i]));
        NSLog(@"ivaname = %@",propertyName);
    }
    
    //3.获得系统内部类的方法
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList([UITableView class], &methodCount);
    for (int j = 0; j < 10; j++) {
        const char* name_s = sel_getName(method_getName(methodList[j]));
        NSLog(@"%@",[NSString stringWithUTF8String:name_s]);
    }

    //4.获得系统内部类协议
    unsigned int protocalCount = 0;
    __unsafe_unretained Protocol **protocolList = class_copyProtocolList([UITableView class], &protocalCount);
    for (int k = 0; k<protocalCount; k++) {
        Protocol *protocl = protocolList[k];
        const char * protocolName = protocol_getName(protocl);
        NSLog(@"protocalName = %@",[NSString stringWithUTF8String:protocolName]);
    }
    

    
    //5.交换方法实现
    [UIColor colorWithWhite:2 alpha:1];
    
}


@end
