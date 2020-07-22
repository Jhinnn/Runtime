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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Person *person = [[Person alloc] init];
    person.name = @"张三";
    
    NSLog(@"%@",[person getPersonName]);
    
}


@end
