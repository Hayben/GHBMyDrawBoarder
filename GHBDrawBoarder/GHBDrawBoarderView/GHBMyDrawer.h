//
//  GHBMyDrawer.h
//  GHBDrawBoarder
//
//  Created by 123 on 16/1/8.
//  Copyright © 2016年 haibin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHBMyDrawer : UIView

@property (nonatomic, assign) CGFloat width;

/**
 *  撤销的线条组
 */
@property (nonatomic, strong) NSMutableArray *canceledLines;

/**
 *  线条数组
 */
@property (nonatomic, strong) NSMutableArray *lines;

/**
 *  清屏
 */
- (void)clearScreen;

/**
 *  撤销
 */
- (void)undo;

/**
 *  恢复
 */
- (void)redo;
@end
