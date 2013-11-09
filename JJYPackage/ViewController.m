//
//  ViewController.m
//  JJYPackage
//
//  Created by tiankong360 on 13-11-9.
//  Copyright (c) 2013年 tiankong360. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) IBOutlet UIButton * myButton;
@end

@implementation ViewController
@synthesize myButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [myButton handleClickEvent:UIControlEventTouchUpInside withClickBlick:^{
        [UIAlertViewBlock AlertViewTitle:@"Title" message:@"Message error" cancleButtonTitle:@"Cancle" sureButtonTitle:@"Yes" andTwoButton:YES sureBlockEvent:^{
            NSLog(@"=======");
            //[UIActivityIndicatorView startAnimatedInView:self.view];
        }];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
