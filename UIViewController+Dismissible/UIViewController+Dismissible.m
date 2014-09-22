//
//  UIViewController+Dismissible.m
//  MESC Quiz
//
//  Created by Liu, Xingruo on 6/12/14.
//  Copyright (c) 2014 CNSI. All rights reserved.
//

#import "UIViewController+Dismissible.h"

NSString const *tapBehindGestureKey = @"tapBehindGestureKey";

@implementation UIViewController (Dismissible)

- (void)setTapBehindGesture:(UITapGestureRecognizer *)tapBehindGesture
{
    objc_setAssociatedObject(self, &tapBehindGestureKey, tapBehindGesture, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UITapGestureRecognizer *)tapBehindGesture
{
    if (!objc_getAssociatedObject(self, &tapBehindGestureKey)) {
        UITapGestureRecognizer *tapBehindGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchedBehind:)];
        [tapBehindGesture setNumberOfTapsRequired:1];
        //So the user can still interact with controls in the modal view
        tapBehindGesture.cancelsTouchesInView = NO;
        tapBehindGesture.delegate = self;
        [self setTapBehindGesture:tapBehindGesture];
    }
    UITapGestureRecognizer *tapGestureRecognizer = objc_getAssociatedObject(self, &tapBehindGestureKey);
    return tapGestureRecognizer;
}

- (void)viewDismissed:(UIViewController *)presentingVC
{
    // Override it to do anything after the view is dismissed.
}

- (void)dismiss
{
    UIViewController *presentingVC = self.presentingViewController;
    [presentingVC dismissViewControllerAnimated:YES completion:^{
        [self viewDismissed:presentingVC];
    }];
}

- (void)touchedBehind:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded) {
        UIView *rootView = self.view.window.rootViewController.view;
        CGPoint location = [sender locationInView:rootView];
        
        //Convert tap location into the local view's coordinate system. If outside, dismiss the view.
        if (![self.view pointInside:[self.view convertPoint:location fromView:rootView] withEvent:nil])  {
            [self dismiss];
        }
    }
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

@end
