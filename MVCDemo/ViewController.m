//
//  ViewController.m
//  MVCDemo
//
//  Created by fanpeng on 17/3/2.
//  Copyright © 2017年 fanpeng. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
#import "MVVMController.h"
#import "CDDController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [[Manager sharedInstance] beginPrintTask];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showCDD];
    });
}

- (void)showMVC {
    
    MVCController *c = [MVCController new];
    [self presentViewController:c animated:true completion:nil];
    
}

- (void)showMVP {
    
    MVPController *c = [MVPController new];
    [self presentViewController:c animated:true completion:nil];
    
}

- (void)showMVVM {
    
    MVVMController *c = [MVVMController new];
    [self presentViewController:c animated:true completion:nil];
    
}

- (void)showCDD {
    
    CDDController *c = [CDDController new];
    [self presentViewController:c animated:true completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
