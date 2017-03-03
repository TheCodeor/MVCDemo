//
//  MVVMController.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMPaper.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMController ()

@property (nonatomic, strong) MVVMPaper *paper;
@property (nonatomic, strong) MVVMView *mvvmView;
@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.paper = [MVVMPaper new];
    _paper.content = @"line 0";
    
    self.viewModel = [MVVMViewModel new];
    _viewModel.contentStr = _paper.content;
    
    self.mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];
    
    [_mvvmView setWithViewModel:_viewModel];
    [_viewModel setWithModel:_paper];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
          _paper.content = @"bbbbbbb";
    });
  
}



@end
