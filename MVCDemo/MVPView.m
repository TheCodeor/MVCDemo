//
//  MVPView.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic, strong) UILabel *lbContent;
@property (nonatomic, strong) UIButton *btnPrint;

@end
@implementation MVPView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        self.lbContent = [UILabel new];
        [self addSubview:_lbContent];
        _lbContent.frame = CGRectMake(0, 100, 300, 30);
        _lbContent.textAlignment = NSTextAlignmentCenter;
        _lbContent.textColor = [UIColor blackColor];
        
        self.btnPrint = [UIButton new];
        _btnPrint.frame = CGRectMake(100, 200, 100, 50);
        [_btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnPrint];
    }
    
    return self;
}

- (void)printOnView:(NSString *)content {
    _lbContent.text = content;
}

- (void)onPrintClick {
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
}

@end
