//
//  ViewController.m
//  图片轮播
//
//  Created by mac on 16/3/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"
#import "MyViewController.h"
#define kScreenWidth self.view.frame.size.width

@interface ViewController ()
{
    MyScrollView *_myScrollView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 450, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.text = @"showNext";
    button.titleLabel.textColor = [UIColor blackColor];
    [button addTarget:self action:@selector(act) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 550, 100, 50)];
    button1.backgroundColor = [UIColor cyanColor];
    button1.titleLabel.text = @"dismiss";
    [self.view addSubview:button1];
    button1.titleLabel.textColor = [UIColor blackColor];
    [button1 addTarget:self action:@selector(actp) forControlEvents:UIControlEventTouchUpInside];
    
    [self _createScrollView];
}
- (void)act
{
    MyViewController *myVC = [[MyViewController alloc] init];;
    
    [self showViewController:myVC sender:nil];
}

- (void)_createScrollView
{
    _myScrollView = [[MyScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 300)];
    _myScrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_myScrollView];
    [self _createPageView];
}

- (void)_createPageView
{
    
    _pageCtr = [[UIPageControl alloc] initWithFrame:CGRectMake(kScreenWidth/2-30, 0, 60, 30)];
    _pageCtr.numberOfPages = 4;
    UIView *pageView = [[UIView alloc] initWithFrame:CGRectMake(0, 300 - 30, kScreenWidth, 30)];
    [pageView addSubview:_pageCtr];
    [self.view addSubview:pageView];
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    if (! _myScrollView.timer) {
//        __weak typeof(self) weakSelf = self;
//        _myScrollView.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:weakSelf selector:@selector(timerBegin:) userInfo:nil repeats:YES];
//    }
//}

- (void)timerBegin:(NSTimer *)timer
{
    _myScrollView.count++;
    _myScrollView.count = _myScrollView.count % 4;
//    __weak typeof(MyScrollView) *weakSelf = _myScrollView;
    [UIView animateWithDuration:.4 animations:^{
        _myScrollView.backgroundColor = [self color];
//        NSLog(@"%d",_myScrollView.count);
        _myScrollView.contentOffset = CGPointMake(kScreenWidth * _myScrollView.count, 0);
        _pageCtr.currentPage = _myScrollView.contentOffset.x/kScreenWidth;
    }];
    
}

//- (void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    if (_myScrollView) {
//        [_myScrollView removeFromSuperview];
//        _myScrollView = nil;
//    }
//    if (_pageCtr) {
//        [_pageCtr removeFromSuperview];
//        _pageCtr = nil;
//    }
//}

- (UIColor *)color
{
    return [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
}

- (void)dealloc
{
    NSLog(@"123");
}

- (void)actp
{
    [self dismissViewControllerAnimated:YES completion:nil];
//    _myScrollView.timer =  nil;
//    _pageCtr = nil;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
