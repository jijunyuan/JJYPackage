//
//  UIAlertViewBlock.h
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Block_SureEvent)();

@interface UIAlertViewBlock : NSObject<UIAlertViewDelegate>

//使用此方法，如果isTwo=yes，需要引入Appdelegate,此时他的click事件封装在了block中
+(void)AlertViewTitle:(NSString *)aTitle message:(NSString *)aMsg cancleButtonTitle:(NSString *)aButtonTitle sureButtonTitle:(NSString *)aSureButton andTwoButton:(BOOL)isTwo sureBlockEvent:(Block_SureEvent)aSureEvent;
@end
