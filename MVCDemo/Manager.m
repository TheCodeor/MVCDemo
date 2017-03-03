//
//  Manager.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "Manager.h"

@implementation Manager
    
+ (instancetype)sharedInstance
{
    static Manager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    
    return instance;
}

- (void)celebratePrintDone {
    NSLog(@"celebrate print done");
}

- (void)beginPrintTask {
    [Employee sharedInstance].delegate = self;
    [[Employee sharedInstance] doPrintJob];
}

- (void)printJobDone {
    [self celebratePrintDone];
}

@end
