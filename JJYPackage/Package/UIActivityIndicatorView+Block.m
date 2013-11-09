//
//  UIActivityIndicatorView+Block.m
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import "UIActivityIndicatorView+Block.h"
#import <QuartzCore/QuartzCore.h>

@interface UIActivityIndicatorView()

@end

@implementation UIActivityIndicatorView (Block)

+(UIActivityIndicatorView *)loadMyProgressView
{
    UIActivityIndicatorView *active = [[UIActivityIndicatorView alloc] init];
    if (iPad)
    {
        active.frame=CGRectMake(344, [UIScreen mainScreen].bounds.size.height/2-40, 80, 80);
    }
    else
    {
        active.frame=CGRectMake(120, [UIScreen mainScreen].bounds.size.height/2-40, 80, 80);
    }
    
    active.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    active.backgroundColor = [UIColor blackColor];
    active.alpha = 0.5;
    active.layer.borderWidth = 1;
    active.layer.borderColor = [UIColor grayColor].CGColor;
    active.layer.cornerRadius = 5;
    return active;
}
+(void)startAnimatedInView:(UIView *)aView
{
    aView.userInteractionEnabled=NO;
    UIActivityIndicatorView * active = [self loadMyProgressView];
    [aView addSubview:active];
    [active startAnimating];
}
+(void)stopAnimatedInView:(UIView *)aView
{
    aView.userInteractionEnabled=YES;
    NSArray * arr = [aView subviews];
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj isKindOfClass:[UIActivityIndicatorView class]])
        {
            UIActivityIndicatorView * active = (UIActivityIndicatorView *)obj;
            [active stopAnimating];
        }
    }];
}

@end
