//
//  Presenter.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "Presenter.h"

@interface Presenter ()

@end
@implementation Presenter

- (void)printTask {
    NSString *printContent = _model.content;
    [_view printOnView:printContent];
}

- (void)onPrintBtnClick {
    
    int rand = arc4random()%10;
    _model.content = [NSString stringWithFormat:@"lint %d", rand + 1];
    [_view printOnView:_model.content];
}

@end
