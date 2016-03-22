//
//  MyViewController.m
//  图片轮播
//
//  Created by mac on 16/3/16.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MyViewController.h"
#import "PViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 450, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.text = @"disMiss";
    button.titleLabel.textColor = [UIColor blackColor];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(act) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 550, 100, 50)];
    button1.backgroundColor = [UIColor blueColor];
    button1.titleLabel.text = @"showNext";
    [self.view addSubview:button1];
    button1.titleLabel.textColor = [UIColor blackColor];
    
    [button1 addTarget:self action:@selector(acte) forControlEvents:UIControlEventTouchUpInside];
}

- (void)act
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)acte
{
    [self showViewController:[[PViewController alloc] init] sender:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"hahah");
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
