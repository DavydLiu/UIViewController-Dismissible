//
//  DLViewController.m
//  UIViewController+DismissibleDemo
//
//  Created by Liu, Xingruo on 6/16/14.
//  Copyright (c) 2014 Xingruo Liu. All rights reserved.
//

#import "DLDismissibleViewController.h"

// Import the head file
#import "UIViewController+Dismissible.h"

@interface DLDismissibleViewController ()

@end

@implementation DLDismissibleViewController

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
