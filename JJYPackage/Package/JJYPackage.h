//
//  JJYPackage.h
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#ifndef JJYPackage_JJYPackage_h
#define JJYPackage_JJYPackage_h

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO) //判断是否是iPhone5
#define iPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad?YES:NO)//判断是手机还是PAD


#import "UIButton+Block.h"
#import "UIAlertViewBlock.h"
#import "UIActivityIndicatorView+Block.h"

#endif
