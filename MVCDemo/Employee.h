//
//  Employee.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmployeePrintDelegate <NSObject>

- (void)printJobDone;

@end

@interface Employee : NSObject

+ (instancetype)sharedInstance;

- (void)doPrintJob;

@property (nonatomic, weak) id<EmployeePrintDelegate> delegate;

@end
