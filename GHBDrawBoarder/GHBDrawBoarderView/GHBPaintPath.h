//
//  GHBPaintPath.h
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHBPaintPath : UIBezierPath

+ (instancetype)paintPathWithLineWidth:(CGFloat)width startPoint:(CGPoint)startP;

@end
