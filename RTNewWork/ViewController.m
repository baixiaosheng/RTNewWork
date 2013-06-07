//
//  ViewController.m
//  RTNewWork
//
//  Created by 张帅 on 13-5-30.
//  Copyright (c) 2013年 SHX. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //每次进入检测网络状况
    self.view.backgroundColor = [UIColor redColor];
	AppDelegate *appDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if(appDlg.isReachable)
    {
        NSLog(@"网络已连接");//执行网络正常时的代码
    }
    else
    {
        NSLog(@"网络连接异常");//执行网络异常时的代码
    }
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cancelRequest:) name:@"无网络" object:nil];
}
-(void)cancelRequest:(NSNotification *)notification
{
    NSLog(@"现在没有网络了");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
