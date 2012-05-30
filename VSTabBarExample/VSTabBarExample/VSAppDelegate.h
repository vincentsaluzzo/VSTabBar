//
//  VSAppDelegate.h
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 30/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VSViewController;

@interface VSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VSViewController *viewController;

@end
