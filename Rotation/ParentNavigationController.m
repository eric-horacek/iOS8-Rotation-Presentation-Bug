//
//  ParentNavigationController.m
//  Rotation
//
//  Created by Eric Horacek on 9/23/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ParentNavigationController.h"

@implementation ParentNavigationController

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
