//
//  MVVMView.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"

@interface MVVMView ()

@property (nonatomic, strong) UILabel *lbContent;
@property (nonatomic, strong) UIButton *btnPrint;
@property (nonatomic, strong) MVVMViewModel *vm;

@end
@implementation MVVMView

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

- (void)setWithViewModel:(MVVMViewModel *)vm {
    self.vm = vm;
 
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        _lbContent.text = newContent;
    }];
}

- (void)onPrintClick {
    [_vm onPrintClick];
}

@end
