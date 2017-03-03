//
//  Employee.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "Employee.h"

@implementation Employee

+ (instancetype)sharedInstance
{
    static Employee *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    
    return instance;
}

- (void)doPrintJob {
    NSLog(@"doing printing job");
    
    if (_delegate) {
        [_delegate printJobDone];
    }
//    [[Manager sharedInstance] celebratePrintDone];
}

@end
