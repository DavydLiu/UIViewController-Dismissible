# UIViewController+Dismissible

[![Version](https://img.shields.io/cocoapods/v/UIViewController+Dismissible.svg?style=flat)](http://cocoadocs.org/docsets/UIViewController+Dismissible)
[![License](https://img.shields.io/cocoapods/l/UIViewController+Dismissible.svg?style=flat)](http://cocoadocs.org/docsets/UIViewController+Dismissible)
[![Platform](https://img.shields.io/cocoapods/p/UIViewController+Dismissible.svg?style=flat)](http://cocoadocs.org/docsets/UIViewController+Dismissible)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To use this Pod, add and remove touchBehind gesture recognizer as follow:

    #import "UIViewController+Dismissalbe.h"

	- (void)viewDidAppear:(BOOL)animated
	{
		[super viewDidAppear:animated];
		
		// add gesture recognizer to UIWindow
		[self.view.window addGestureRecognizer:self.tapBehindGesture];
	}

	- (void)viewWillDisappear:(BOOL)animated
	{
		[super viewWillDisappear:animated];

		// remove gesture recognizer from UIWindow
		[self.view.window removeGestureRecognizer:self.tapBehindGesture];
	}


## Requirements

ARC

## Installation

UIViewController+Dismissible is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UIViewController+Dismissible"


## Author

Xingruo Liu, xingruo.liu@gmail.com

## License

UIViewController+Dismissible is available under the MIT license. See the LICENSE file for more info.

