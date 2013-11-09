//
//  UIButton+Block.h
//  Block_Test
//
//  Created by tiankong360 on 13-10-26.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ActionBlock)();

@interface UIButton (Block)<UIAlertViewDelegate>
//clcik事件直接封装成block
-(void)handleClickEvent:(UIControlEvents)aEvent withClickBlick:(ActionBlock)buttonClickEvent;
@end
