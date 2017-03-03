//
//  MVVMViewModel.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaper.h"

@interface MVVMViewModel : NSObject

@property (nonatomic, strong) NSString *contentStr;

- (void)setWithModel:(MVVMPaper *)paper;
- (void)onPrintClick;

@end
