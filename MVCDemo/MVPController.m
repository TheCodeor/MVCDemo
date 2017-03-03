//
//  MVPController.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVPController.h"
#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"

@interface MVPController ()

@property (nonatomic, strong) Presenter *presenter;
@property (nonatomic, strong) MVPView *mvpView;
@property (nonatomic, strong) MVPModel *mvpModel;

@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [Presenter new];
    
    self.mvpView = [MVPView new];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    self.mvpModel = [MVPModel new];
    _mvpModel.content = @"line 0";
    
    _mvpView.delegate = _presenter;
    _presenter.view = _mvpView;
    _presenter.model = _mvpModel;
    
    [_presenter printTask];
    
}


@end
