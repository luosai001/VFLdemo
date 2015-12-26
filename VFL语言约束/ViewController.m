//
//  ViewController.m
//  VFL语言约束
//
//  Created by Admin on 15/12/26.
//  Copyright © 2015年 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1.添加两个控件到父控件上
    // 1.1添加蓝色View
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    // 1.1添加红色View
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    // 2.禁用auturezing
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // 3.添加约束
    /*
     lFormat : VFL语句
     options: 对齐方式
     metrics: VFL语句中用到的变量值
     views: VFL语句中用到的控件
     
     默认水平 控件与父控件间隔20
     */
    //第二种写法
    
    int margin = 20 ;
    NSDictionary *metrics = @{@"margin":@(margin) };
    NSArray *blueViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"|-margin-[blueView]-|" options:0 metrics:metrics views:NSDictionaryOfVariableBindings(blueView)];
    NSArray *blueViewV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[blueView(50)]" options:0 metrics:metrics views:NSDictionaryOfVariableBindings(blueView)];
    [self.view addConstraints:blueViewH];
    [self.view addConstraints:blueViewV];
    
    NSArray *redViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[redView]-|" options:0 metrics:metrics views:@{@"redView":redView}];
    NSArray *redViewV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[blueView]-margin-[redView(50)]" options:0 metrics:metrics views:NSDictionaryOfVariableBindings(blueView,redView)];
    [self.view addConstraints:redViewH];
    [self.view addConstraints:redViewV];

    
    /*
     //第一种写法
    int margin = 20 ;
    NSArray *blueViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[blueView]-|" options:0 metrics:@{@"margin":@(margin)} views:@{@"blueView":blueView}];
    NSArray *blueViewV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[blueView(50)]" options:0 metrics:@{@"margin":@(margin)} views:@{@"blueView":blueView}];
    [self.view addConstraints:blueViewH];
    [self.view addConstraints:blueViewV];
    
    NSArray *redViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[redView]-|" options:0 metrics:@{@"margin":@(margin)} views:@{@"redView":redView}];
    NSArray *redViewV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[blueView]-margin-[redView(50)]" options:0 metrics:@{@"margin":@(margin)} views:@{@"blueView":blueView,@"redView":redView}];
    [self.view addConstraints:redViewH];
    [self.view addConstraints:redViewV];
     */
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
