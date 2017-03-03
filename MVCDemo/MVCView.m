//
//  MVCView.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVCView.h"

@interface MVCView ()

@property (nonatomic, strong) UIButton *btnPrint;

@end

@implementation MVCView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 100, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
}

- (void)printOnView:(Paper *)paper {
    NSLog(@"printing paper conter:%@", paper.content);
}

- (void)onPrintClick {
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
}

@end
