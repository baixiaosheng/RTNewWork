//
//  AppDelegate.h
//  RTNewWork
//
//  Created by 张帅 on 13-5-30.
//  Copyright (c) 2013年 SHX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) Reachability *hostReach;
@property (assign, nonatomic) BOOL isReachable;


@end
