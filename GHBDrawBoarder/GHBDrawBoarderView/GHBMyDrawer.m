//
//  GHBMyDrawer.m
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import "GHBMyDrawer.h"
#import "GHBPaintPath.h"
@interface GHBMyDrawer ()

@property (nonatomic, strong)GHBPaintPath *path;

@property (nonatomic, strong) CAShapeLayer *slayer;

@end
@implementation GHBMyDrawer

- (NSMutableArray *)lines{
    if (_lines == nil) {
        _lines = [NSMutableArray array];
    }
    return _lines;
}

- (NSMutableArray *)canceledLines{
    if (_canceledLines == nil) {
        _canceledLines = [NSMutableArray array];
    }
    return _canceledLines;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _width = 3;
    }
    return self;
}

//根据touches集合点获取对应的触摸点
- (CGPoint)pointWithTouches:(NSSet *)touches{
    UITouch *touch = [touches anyObject];
    return [touch locationInView:self];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGPoint startP = [self pointWithTouches:touches];
    
    if ([event allTouches].count == 1) {
        GHBPaintPath *path = [GHBPaintPath paintPathWithLineWidth:_width startPoint:startP];
        _path = path;
        
        CAShapeLayer *slayer = [CAShapeLayer layer];
        
        slayer.path = path.CGPath;
        slayer.backgroundColor = [UIColor clearColor].CGColor;
        slayer.fillColor = [UIColor clearColor].CGColor;
        slayer.lineCap = kCALineCapRound;
        slayer.lineJoin = kCALineCapRound;
        slayer.strokeColor = [UIColor blackColor].CGColor;
        slayer.lineWidth = path.lineWidth;
        
        [self.layer addSublayer:slayer];
        
        _slayer = slayer;
        
        [[self mutableArrayValueForKey:@"canceledLines"] removeAllObjects];
        [[self mutableArrayValueForKey:@"lines"]addObject:_slayer];
    }
}




@end
