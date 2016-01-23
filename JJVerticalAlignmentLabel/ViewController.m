//
//  ViewController.m
//  JJVerticalAlignmentLabel
//
//  Created by LiHong on 16/1/23.
//  Copyright © 2016年 李红(lh.coder@foxmail.com). All rights reserved.
//

#import "ViewController.h"
#import "JJVerticalAlignmentLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIEdgeInsets edge = UIEdgeInsetsMake(64.0, 15.0, 15.0, 15.0);
    CGRect frame = CGRectMake(edge.left, edge.top, self.view.bounds.size.width-(edge.left+edge.right), 80.0);
    JJVerticalAlignmentLabel *topLabel = [[JJVerticalAlignmentLabel alloc] initWithFrame:frame];
    topLabel.text = @"这周我决定做一个关于彻底解耦合的应用架构的实验";
    topLabel.numberOfLines = 0;
    topLabel.font = [UIFont boldSystemFontOfSize:20.0];
    topLabel.layer.borderColor = [UIColor redColor].CGColor;
    topLabel.layer.borderWidth = 0.5;
    topLabel.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
    
    frame = CGRectMake(edge.left, frame.origin.y+frame.size.height+edge.top, frame.size.width, frame.size.height);
    JJVerticalAlignmentLabel *centerLable = [[JJVerticalAlignmentLabel alloc] initWithFrame:frame];
    centerLable.verticalAlignment = JJVerticalAlignmentCenter;
    centerLable.text = @"为了有一个名字来关联，我把这个架构叫做EventMVVM";
    centerLable.numberOfLines = 0;
    centerLable.font = topLabel.font;
    centerLable.layer.borderColor = [UIColor blueColor].CGColor;
    centerLable.layer.borderWidth = 0.5;
    centerLable.backgroundColor = topLabel.backgroundColor;
    
    frame = CGRectMake(edge.left, frame.origin.y+frame.size.height+edge.top, frame.size.width, frame.size.height);
    JJVerticalAlignmentLabel *bottomLable = [[JJVerticalAlignmentLabel alloc] initWithFrame:frame];
    bottomLable.verticalAlignment = JJVerticalAlignmentBottom;
    bottomLable.text = @"为了有一个名字来关联，我把这个架构叫做EventMVVM";
    bottomLable.numberOfLines = 0;
    bottomLable.font = topLabel.font;
    bottomLable.layer.borderColor = [UIColor cyanColor].CGColor;
    bottomLable.layer.borderWidth = 0.5;
    bottomLable.backgroundColor = topLabel.backgroundColor;
    
    [self.view addSubview:topLabel];
    [self.view addSubview:centerLable];
    [self.view addSubview:bottomLable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
