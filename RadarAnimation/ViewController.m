//
//  ViewController.m
//  RadarAnimation
//
//  Created by 李少锋 on 2018/11/21.
//  Copyright © 2018年 李少锋. All rights reserved.
//

#import "ViewController.h"
#import "RadarAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:0.5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        RadarAnimation *radarAnimation=[[RadarAnimation alloc] initWithFrame:CGRectMake(30, 150, [UIScreen mainScreen].bounds.size.width-60, [UIScreen mainScreen].bounds.size.width-60)];
        radarAnimation.backgroundColor=[UIColor clearColor];
        [self.view addSubview:radarAnimation];
        
        [UIView animateWithDuration:2 animations:^{
            radarAnimation.transform=CGAffineTransformScale(radarAnimation.transform, 4, 4);
            radarAnimation.alpha=0;
        } completion:^(BOOL finished) {
            [radarAnimation removeFromSuperview];
        }];
        
    }];
}


@end
