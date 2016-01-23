//
//  JJVerticalAlignmentLabel.m
//  JJVerticalAlignmentLabel
//
//  Created by LiHong on 16/1/23.
//  Copyright © 2016年 李红(lh.coder@foxmail.com). All rights reserved.
//

#import "JJVerticalAlignmentLabel.h"

@implementation JJVerticalAlignmentLabel

- (instancetype) init {
    if (self = [super init]) {
        [self commanInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commanInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commanInit];
    }
    return self;
}

- (void)commanInit {
    self.contentMode = UIViewContentModeRedraw;
    self.verticalAlignment = JJVerticalAlignmentTop;
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGFloat yOffset = 0.0;
    CGFloat width = bounds.size.width;
    CGFloat height = [self.text boundingRectWithSize:bounds.size
                                             options:NSStringDrawingUsesLineFragmentOrigin
                                          attributes:@{NSFontAttributeName:self.font}
                                             context:nil].size.height;
    if (_verticalAlignment == JJVerticalAlignmentTop) {
        yOffset = 0.0;
    }else if (_verticalAlignment == JJVerticalAlignmentCenter) {
         yOffset = (bounds.size.height - height)/2.0;
    }else if (_verticalAlignment == JJVerticalAlignmentBottom) {
        yOffset = bounds.size.height - height;
    }
   
    return CGRectMake(0, yOffset, width, height);
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect r = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:r];
}
@end
