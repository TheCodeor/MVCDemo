//
//  CDDController.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/3.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "CDDController.h"
#import "MyView.h"
#import "MyPresentr.h"
#import "CDDContext.h"
#import "NSObject+CDD.h"

@interface CDDController ()

@property (nonatomic, strong) MyView *myView;
@property (nonatomic, strong) MyPresentr *myPresenter;

@end

@implementation CDDController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myPresenter = [MyPresentr new];
    self.myView = [MyView new];
    
    _myView.frame = self.view.bounds;
    
    [self.view addSubview:_myView];
    
    self.context = [CDDContext new];
    self.context.presenter = _myPresenter;
    self.context.view = _myView;
    
    _myView.context = self.context;
    _myPresenter.context = self.context;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
