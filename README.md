# RadarAnimation
# RadarAnimation

### 在view中画圆
```
- (void)drawRect:(CGRect)rect{
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
 
 ```
 ### 之后在调用的时候用动画
 
 ```
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
