//
//  UIButton+Block.m
//  Block_Test
//
//  Created by tiankong360 on 13-10-26.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static char *overViewKey;

@implementation UIButton (Block)
-(void)handleClickEvent:(UIControlEvents)aEvent withClickBlick:(ActionBlock)buttonClickEvent
{
    objc_setAssociatedObject(self, &overViewKey, buttonClickEvent, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(buttonClick) forControlEvents:aEvent];
}
-(void)buttonClick
{
    ActionBlock blockClick = objc_getAssociatedObject(self, &overViewKey);
    if (blockClick != nil)
    {
        blockClick();
    }
}

@end
