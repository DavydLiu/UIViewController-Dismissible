//
//  DLViewController.m
//  UIViewController+DismissableDemo
//
//  Created by Liu, Xingruo on 6/16/14.
//  Copyright (c) 2014 Xingruo Liu. All rights reserved.
//

#import "DLDismissableViewController.h"

// Import the head file
#import "UIViewController+Dismissable.h"

@interface DLDismissableViewController ()

@end

@implementation DLDismissableViewController

// Add gesture recognizer to window when view appeared
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.view.window addGestureRecognizer:self.tapBehindGesture];
}

// Remember to remove it when view will disappear
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.view.window removeGestureRecognizer:self.tapBehindGesture];
}

@end
