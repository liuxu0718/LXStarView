//
//  LXStarView.m
//  LXStarView
//
//  Created by 刘旭 on 15/11/6.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#import "LXStarView.h"

@implementation LXStarView

- (id)initWithFrame:(CGRect)frame
       spacingFrame:(NSInteger)spacing {
    if (self = [super initWithFrame:frame]) {
        for (int i = 0; i < 5; i++) {
            UIButton *starButton = [[UIButton alloc]initWithFrame:CGRectMake((30 + spacing) * i, 0, frame.size.height, frame.size.height)];
            starButton.tag = 100 + i;
            [starButton setBackgroundImage:[UIImage imageNamed:@"star_yellow_show@2x.png"] forState:UIControlStateNormal];
            [starButton addTarget:self action:@selector(starButtonAction:) forControlEvents:UIControlEventTouchDown];
            [self addSubview:starButton];
        }
    }
    return self;
}

- (void)starButtonAction:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(lxStarView:showStarNumbers:)]) {
        for (UIButton *button in self.subviews) {
            if (button.tag >= 100) {
                if (button.tag <= sender.tag) {
                    [button setBackgroundImage:[UIImage imageNamed:@"star_yellow_show@2x.png"] forState:UIControlStateNormal];
                } else {
                    [button setBackgroundImage:[UIImage imageNamed:@"star_gray_show@2x.png"] forState:UIControlStateNormal];
                }
            }
        }
        [_delegate lxStarView:self showStarNumbers:sender.tag - 99];
    }
}

- (void)showStarNumbers:(NSInteger)numbers {
    for (UIButton *button in self.subviews) {
        if (button.tag <= 99 + numbers) {
            [button setBackgroundImage:[UIImage imageNamed:@"star_yellow_show@2x.png"] forState:UIControlStateNormal];
        } else {
            [button setBackgroundImage:[UIImage imageNamed:@"star_gray_show@2x.png"] forState:UIControlStateNormal];
        }
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
