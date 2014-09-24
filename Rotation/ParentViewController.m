//
//  ParentViewController.m
//  Rotation
//
//  Created by Eric Horacek on 9/23/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ParentViewController.h"

@implementation ParentViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationPortrait;
}

#pragma mark - ParentViewController

- (void)setChildViewController:(UIViewController *)viewController
{
    // Add child
    if (viewController && !_childViewController) {
        
        _childViewController = viewController;
        
        [self.childViewController beginAppearanceTransition:YES animated:NO];
        [self addChildViewController:self.childViewController];
        
        self.childViewController.view.frame = self.view.bounds;
        self.childViewController.view.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
        [self.view addSubview:self.childViewController.view];

        [self.childViewController didMoveToParentViewController:self];
        [self.childViewController endAppearanceTransition];
    }
    // Remove child
    else if (!viewController && _childViewController) {
        
        [self.childViewController willMoveToParentViewController:nil];
        [self.childViewController beginAppearanceTransition:NO animated:NO];

        [self.childViewController.view removeFromSuperview];

        [self.childViewController removeFromParentViewController];
        [self.childViewController endAppearanceTransition];
        
        _childViewController = viewController;
        
    } else {
        // Replace, not needed for this purpose
    }
}

@end
