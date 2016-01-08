//
//  GHBDrawBoarderView.h
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^drafiInfoBlock) (NSInteger num, NSArray *linesInfo, NSArray *canceledLinesInfo);

@interface GHBDrawBoarderView : UIView

@property (nonatomic, strong) NSIndexPath *index;

@property (nonatomic, assign) NSInteger num;

@property (nonatomic, strong) NSArray *linesInfo;

@property (nonatomic, strong) NSArray *canceledLinesInfo;

@property (nonatomic, copy) drafiInfoBlock drafiInfoBlock;

- (void)show;

- (void)dismiss;

@end
