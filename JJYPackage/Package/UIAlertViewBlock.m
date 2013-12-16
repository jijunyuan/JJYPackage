//
//  UIAlertViewBlock.m
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
// i am a hero hahhah

#import "UIAlertViewBlock.h"
#import <objc/runtime.h>

static char * alertKey;

@interface UIAlertViewBlock()
@end
@implementation UIAlertViewBlock

//*********************
//test
// *********************


+(void)AlertViewTitle:(NSString *)aTitle message:(NSString *)aMsg cancleButtonTitle:(NSString *)aButtonTitle sureButtonTitle:(NSString *)aSureButton andTwoButton:(BOOL)isTwo sureBlockEvent:(Block_SureEvent)aSureEvent
{
    UIAlertView * alert;
    if (isTwo)
    {
        alert = [[UIAlertView alloc] initWithTitle:aTitle message:aMsg delegate:self cancelButtonTitle:aButtonTitle otherButtonTitles:aSureButton, nil];
        objc_setAssociatedObject(alert, &alertKey, aSureEvent, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    else
    {
        alert = [[UIAlertView alloc] initWithTitle:aTitle message:aMsg delegate:nil cancelButtonTitle:aButtonTitle otherButtonTitles:nil, nil];
    }
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%s",__FUNCTION__);
    if (buttonIndex == 1)
    {
        Block_SureEvent blockSure = objc_getAssociatedObject(alertView, &alertKey);
        if (blockSure != nil)
        {
            blockSure();
        }
        else
        {
            NSLog(@"error");
        } 
    }
}

@end
