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
<<<<<<< HEAD
=======
//8888888888
//7777777777
//6666666666
//5555555555
>>>>>>> acffcde30a6b3353e44bb89f2fa20ead38ab34aa
//test 55555555
//test 55555555
// 444444444444
@interface UIAlertViewBlock()
@end
@implementation UIAlertViewBlock
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
