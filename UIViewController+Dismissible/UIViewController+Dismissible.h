//
//  UIViewController+Dismissible.h
//  MESC Quiz
//
//  Created by Liu, Xingruo on 6/12/14.
//  Copyright (c) 2014 CNSI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UIViewController (Dismissible)

@property (nonatomic) UITapGestureRecognizer *tapBehindGesture;

// Will be called after view is dismissed
- (void)viewDismissed:(UIViewController *)presentingVC;
// Call it to dismiss the view programatically
- (void)dismiss;

@end
