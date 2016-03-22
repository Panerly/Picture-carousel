//
//  MyScrollView.h
//  图片轮播
//
//  Created by mac on 16/3/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIScrollView<UIScrollViewDelegate>

@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, assign) int count;
//@property (nonatomic, strong) UIPageControl *pageCtr;

@end
