//
//  LXStarView.h
//  LXStarView
//
//  Created by 刘旭 on 15/11/6.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LXStarView;

@protocol LXStarViewDelegate <NSObject>

- (void)lxStarView:(LXStarView*)starView showStarNumbers:(NSInteger)starNumbers;

@end

@interface LXStarView : UIView

@property (nonatomic, weak) id <LXStarViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame
       spacingFrame:(NSInteger)spacing;

- (void)showStarNumbers:(NSInteger)numbers;

@end
