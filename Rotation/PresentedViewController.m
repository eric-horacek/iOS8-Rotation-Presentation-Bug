//
//  PresentedViewController.m
//  Rotation
//
//  Created by Eric Horacek on 9/23/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "PresentedViewController.h"

@implementation PresentedViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:self.view.bounds];
    button.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [button addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Dismiss Child View Controller" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark - PresentedViewController

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
