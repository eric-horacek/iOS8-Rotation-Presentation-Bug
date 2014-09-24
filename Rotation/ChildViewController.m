//
//  ChildViewController.m
//  Rotation
//
//  Created by Eric Horacek on 9/23/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ChildViewController.h"
#import "PresentedViewController.h"

@implementation ChildViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:self.view.bounds];
    button.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [button setTitle:@"Present PresentedViewController" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

#pragma mark - ChildViewController

- (void)present
{
    [self.parentViewController presentViewController:[PresentedViewController new] animated:YES completion:nil];
}

@end
