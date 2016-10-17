//
//  ViewController.m
//  snow
//
//  Created by chenfenglong on 16/10/17.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:75 green:183 blue:231 alpha:1.0];
    
//    self.view.backgroundColor = [UIColor blueColor];
    
    CGRect rect = CGRectMake(0, -30, self.view.bounds.size.width, 50);
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    emitterLayer.frame = rect;
    [self.view.layer addSublayer:emitterLayer];
    emitterLayer.emitterShape = kCAEmitterLayerRectangle;
    
    emitterLayer.emitterPosition = CGPointMake(rect.size.width / 2, rect.size.height / 2);
    emitterLayer.emitterSize = rect.size;
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.contents = (id)[[UIImage imageNamed:@"FFTspark"] CGImage];
    emitterCell.birthRate = 120;
    emitterCell.lifetime = 3;
    emitterCell.lifetimeRange = 3.0;
    
    //给Y方向一个加速度
    emitterCell.yAcceleration = 70.0;
    //给X方向一个加速度
    emitterCell.xAcceleration = 20.0;
    //初始速度
    emitterCell.velocity = 20.0;
    //向左
    emitterCell.emissionLongitude = M_PI;
    //随机速度(-200 + 20 ---- 200 + 20)
    emitterCell.emissionRange = 200.0;
    //随机方向 -pi / 2 ---- pi / 2
    emitterCell.emissionRange = M_PI_2;
    
    emitterCell.redRange = 0.3;
    emitterCell.greenRange = 0.3;
    //逐渐变小
    emitterCell.blueRange = 0.3;
    
    emitterCell.scale = 0.8;
    emitterCell.scaleRange = 0.8;
    emitterCell.scaleSpeed = -0.15;
    
    //随机透明度
    emitterCell.alphaRange = 0.75;
    //逐渐消失
    emitterCell.alphaSpeed = -0.15;
    
    emitterLayer.emitterCells = @[emitterCell];
}




@end
