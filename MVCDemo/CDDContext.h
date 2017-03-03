//
//  CDDContext.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/3.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSObject+CDD.h"

@interface CDDView : UIView


@end

@interface CDDPresenter : NSObject


@end
@interface CDDContext : NSObject

@property (nonatomic, strong) CDDPresenter *presenter;
@property (nonatomic, strong) CDDView *view;

@end
