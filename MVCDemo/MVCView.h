//
//  MVCView.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"

@protocol MVCViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end

@interface MVCView : UIView

- (void)printOnView:(Paper *)paper;

@property (nonatomic, weak) id<MVCViewDelegate> delegate;

@end
