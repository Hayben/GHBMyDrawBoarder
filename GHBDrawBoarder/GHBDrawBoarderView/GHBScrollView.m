//
//  GHBScrollView.m
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import "GHBScrollView.h"

@implementation GHBScrollView

- (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view{
    if ([event allTouches].count == 1) {
        return YES;
    }
    return NO;
}

@end
