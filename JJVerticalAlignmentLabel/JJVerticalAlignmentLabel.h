//
//  JJVerticalAlignmentLabel.h
//  JJVerticalAlignmentLabel
//
//  Created by LiHong on 16/1/23.
//  Copyright © 2016年 李红(lh.coder@foxmail.com). All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    JJVerticalAlignmentTop,
    JJVerticalAlignmentCenter,
    JJVerticalAlignmentBottom,
}JJVerticalAlignment;

@interface JJVerticalAlignmentLabel : UILabel
@property (nonatomic) JJVerticalAlignment verticalAlignment;
@end
