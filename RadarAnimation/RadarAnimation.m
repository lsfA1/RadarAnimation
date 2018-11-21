//
//  RadarAnimation.m
//  RadarAnimation
//
//  Created by 李少锋 on 2018/11/21.
//  Copyright © 2018年 李少锋. All rights reserved.
//

#import "RadarAnimation.h"

@implementation RadarAnimation


- (void)drawRect:(CGRect)rect {
    CGFloat redbius =40;
    CGFloat startAngle = 0;
    CGRect CGFrome =[UIScreen mainScreen].bounds;
    CGFloat CGfrom_x=CGFrome.size.width-60;
    CGPoint point = CGPointMake(CGfrom_x/2, CGfrom_x/2);
    CGFloat endAngle = 2*M_PI;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:redbius startAngle:startAngle endAngle:endAngle clockwise:YES];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    layer.path=path.CGPath;
    layer.strokeColor=[UIColor colorWithRed:0 green:191 blue:255 alpha:1.0].CGColor;
    layer.fillColor=[UIColor colorWithRed:0 green:191 blue:255 alpha:1.0].CGColor;
    [self.layer addSublayer:layer];
}

@end
