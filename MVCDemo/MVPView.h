//
//  MVPView.h
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end

@interface MVPView : UIView

- (void)printOnView:(NSString *)content;

@property (nonatomic, weak) id<MVPViewDelegate> delegate;


@end
