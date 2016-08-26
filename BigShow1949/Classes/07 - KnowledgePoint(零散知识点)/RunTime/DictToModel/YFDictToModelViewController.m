//
//  YFDictToModelViewController.m
//  BigShow1949
//
//  Created by 杨帆 on 16/7/6.
//  Copyright © 2016年 BigShowCompany. All rights reserved.
//

#import "YFDictToModelViewController.h"
#import "Person.h"
@interface YFDictToModelViewController ()
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation YFDictToModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.dataArr = [NSMutableArray array];
    NSArray *dictArr = @[@{@"name" : @"Jack",
                           @"userId" : @"11111",
                           @"classes" : @{@"className" : @"Chinese", @"time" : @"2016_03"},
                           @"teachers" : @[@{@"teaName" : @"Lisa1", @"teaAge" : @"21"},
                                           @{@"teaName" : @"Lisa2", @"teaAge" : @"22"},
                                           @{@"teaName" : @"Lisa3", @"teaAge" : @"23"}]},
                         @{@"name" : @"Rose",
                           @"userId" : @"22222",
                           @"classes" : @{@"className" : @"Math", @"time" : @"2016_04"},
                           @"teachers" : @[@{@"teaName" : @"Lisa1", @"teaAge" : @"21"},
                                           @{@"teaName" : @"Lisa2", @"teaAge" : @"22"},
                                           @{@"teaName" : @"Lisa3", @"teaAge" : @"23"}]}];
    
    
    for (NSDictionary *dict in dictArr) {
        Person *p = [Person modelWithDict:dict];
        [self.dataArr addObject:p];
    }

    NSLog(@"dataArr = %@", self.dataArr);
}


@end
