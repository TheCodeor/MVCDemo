//
//  Presenter.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPModel.h"

@interface Presenter : NSObject<MVPViewDelegate>

@property (nonatomic, strong) MVPView *view;
@property (nonatomic, strong) MVPModel *model;


- (void)printTask;

@end
