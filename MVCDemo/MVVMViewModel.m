//
//  MVVMViewModel.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMPaper *model;

@end
@implementation MVVMViewModel

- (instancetype)init {
    self = [super init];
    if (self) {

    }
    
    return self;
}


- (void)setWithModel:(MVVMPaper *)paper {
    self.model = paper;
    self.contentStr = paper.content;
    
    [self.KVOController observe:paper keyPath:@"content" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        self.contentStr = newContent;
    }];
}

- (void)onPrintClick {
    self.model.content = @"lint 1";
    self.contentStr = self.model.content;
    
}

@end
