//
//  VSViewController.h
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 30/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VSTabBar.h"
@interface VSViewController : UIViewController<VSTabBarDelegate> {
    IBOutlet UIImageView* image;
    IBOutlet UILabel* label;
}

@end
