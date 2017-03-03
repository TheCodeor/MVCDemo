//
//  MyView.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/3.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MyView.h"
#import "CDDContext.h"
#import "MyPresentr.h"

@interface MyView ()

@property (nonatomic, strong) UIButton *btnPrint;

@end

@implementation MyView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
                
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
}

- (void)onPrintClick {
    
    MyPresentr *pre = (MyPresentr*)self.context.presenter;
    [pre printPaper];
}

@end
