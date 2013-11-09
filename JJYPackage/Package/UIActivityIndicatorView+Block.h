//
//  UIActivityIndicatorView+Block.h
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIActivityIndicatorView (Block)
+(UIActivityIndicatorView *)loadMyProgressView;
+(void)startAnimatedInView:(UIView *)aView;
+(void)stopAnimatedInView:(UIView *)aView;
@end
