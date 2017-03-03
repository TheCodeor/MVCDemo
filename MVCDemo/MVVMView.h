//
//  MVVMView.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

- (void)setWithViewModel:(MVVMViewModel *)vm;

@end
