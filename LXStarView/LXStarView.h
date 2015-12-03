//
//  LXStarView.h
//  LXStarView
//
//  Created by 刘旭 on 15/11/6.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LXStarViewDelegate <NSObject>

- (void)getStarNum:(NSInteger)num;

@end

@interface LXStarView : UIView
@property (nonatomic, strong) id <LXStarViewDelegate> delegate;
@property (nonatomic, strong) UIButton *starButton;

- (void)showStarNum:(NSInteger)num;

- (id)initWithFrame:(CGRect)frame
       spacingFrame:(NSInteger)spacing;

@end
