//
//  PViewController.m
//  图片轮播
//
//  Created by mac on 16/3/16.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "PViewController.h"

@interface PViewController ()

@end

@implementation PViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 450, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    button.titleLabel.textColor = [UIColor blackColor];
    button.titleLabel.text = @"disMiss";
    
    [button addTarget:self action:@selector(act) forControlEvents:UIControlEventTouchUpInside];
}
- (void)dealloc
{
    NSLog(@"abuegriaubre");
}

- (void)act
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
