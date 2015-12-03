//
//  ViewController.m
//  LXStarView
//
//  Created by 刘旭 on 15/12/3.
//  Copyright © 2015年 刘旭. All rights reserved.
//

#import "ViewController.h"
#import "LXStarView.h"

@interface ViewController ()<LXStarViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LXStarView *starViewUp = [[LXStarView alloc]initWithFrame:CGRectMake(0, 100, 175, 30)spacingFrame:5];
    starViewUp.center = self.view.center;
    starViewUp.delegate = self;
    [self.view addSubview:starViewUp];
    
    
    LXStarView *starViewDown = [[LXStarView alloc]initWithFrame:CGRectMake(0, 200, 175, 30)spacingFrame:5];
    starViewDown.center = CGPointMake(self.view.center.x, starViewUp.frame.origin.y + 100);
    //if only display, please setting userInteractionEnabled = NO.
    starViewDown.userInteractionEnabled = NO;
    [starViewDown showStarNum:5];
    [self.view addSubview:starViewDown];
}

- (void)getStarNum:(NSInteger)num {
    NSLog(@"%ld", num);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
