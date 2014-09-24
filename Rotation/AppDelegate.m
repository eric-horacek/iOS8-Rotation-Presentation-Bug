//
//  AppDelegate.m
//  Rotation
//
//  Created by Eric Horacek on 9/23/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "AppDelegate.h"
#import "ChildViewController.h"
#import "PresentedViewController.h"
#import "ParentViewController.h"
#import "ParentNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Add ParentViewController containing ChildViewController
    [self addParentViewControllerInWindow];
    
    // Add ParentNavigationViewController containing ChildViewController
//    [self addParentNavigationViewControllerWithWindow];
    
    return YES;
}

- (void)addParentViewControllerInWindow
{
    ParentViewController *parentViewController = [ParentViewController new];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blueColor];
//    self.window.rootViewController = [ChildViewController new];
    self.window.rootViewController = parentViewController;
    [self.window makeKeyAndVisible];
    
    parentViewController.childViewController = [ChildViewController new];
}

- (void)addParentNavigationViewControllerWithWindow
{
    ParentNavigationController *parentViewController = [ParentNavigationController new];
    parentViewController.navigationBarHidden = YES;

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blueColor];
    self.window.rootViewController = parentViewController;
    [self.window makeKeyAndVisible];

    parentViewController.viewControllers = @[[ChildViewController new]];
}

@end
