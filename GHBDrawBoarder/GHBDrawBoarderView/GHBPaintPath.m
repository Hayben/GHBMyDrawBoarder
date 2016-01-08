//
//  GHBPaintPath.m
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import "GHBPaintPath.h"

@implementation GHBPaintPath

+(instancetype)paintPathWithLineWidth:(CGFloat)width startPoint:(CGPoint)startP{
    
    GHBPaintPath *path = [[self alloc]init];
    
    path.lineWidth = width;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处处理
    
    [path moveToPoint:startP];
    
    return path;
}

@end
