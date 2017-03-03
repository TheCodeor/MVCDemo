//
//  Manager.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface Manager : NSObject<EmployeePrintDelegate>

+ (instancetype)sharedInstance;

- (void)celebratePrintDone;

- (void)beginPrintTask;

@end
