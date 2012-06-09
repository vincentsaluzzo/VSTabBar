//
//  VSTabBarController.h
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 08/06/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VSTabBar.h"
@interface VSTabBarController : UITabBarController<VSTabBarDelegate> {
    VSTabBar* aBabar;
}

@property(nonatomic, readonly) VSTabBar* theTabBar;
@end
