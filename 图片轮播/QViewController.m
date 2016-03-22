//
//  QViewController.m
//  图片轮播
//
//  Created by mac on 16/3/16.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "QViewController.h"
#import "ViewController.h"
@interface QViewController ()

@end

@implementation QViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 450, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.text = @"showNext";
    [self.view addSubview:button];
    button.titleLabel.textColor = [UIColor blackColor];
    
    [button addTarget:self action:@selector(act) forControlEvents:UIControlEventTouchUpInside];
}

- (void)act
{
    [self showViewController:[[ViewController alloc] init] sender:nil];
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
