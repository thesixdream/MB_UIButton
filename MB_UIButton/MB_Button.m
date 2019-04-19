//
//  MB_Button.m
//  CGAffineTransformMakeTranslation使用
//
//  Created by 孟博 on 2019/4/15.
//  Copyright © 2019 孟博. All rights reserved.
//

#import "MB_Button.h"

@interface MB_Button()

@property (nonatomic,strong)UIView *baseview;

@end

@implementation MB_Button

-(instancetype)init{
    if (self = [super init]) {
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews{
    _baseview = [UIView new];
    _baseview.backgroundColor = UIColor.purpleColor;
    _baseview.frame = CGRectMake(0, 64, 100, 100);// CGRect{(0,0,100,100)};
    [self addSubview:_baseview];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    [UIView animateWithDuration:2 animations:^{
        self->_baseview.transform = CGAffineTransformMakeTranslation(width - 100, 50);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self->_baseview.transform = CGAffineTransformMakeTranslation(20, -64);
        } completion:^(BOOL finished) {
            
        }];
        //            self->_baseview.transform = CGAffineTransformIdentity;
    }];
}

@end
