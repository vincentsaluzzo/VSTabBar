//
//  VSTabBarController.m
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VSTabBarController.h"

@interface VSTabBarController ()

@end

@implementation VSTabBarController
@synthesize theTabBar = aBabar;
-(void) loadView {
    [self loadView];
    CGRect rect = self.tabBar.frame;
    rect.origin.y -= 1;
    rect.size.height += 1;
    
    aBabar = [[[VSTabBar alloc] initWithFrame:rect] retain];
    [self.view addSubview:aBabar];
}

-(void) viewDidLayoutSubviews {
    
    NSMutableArray* itemsOfTabBar = [[NSMutableArray alloc] initWithCapacity:[self.viewControllers count]];
    for (UIViewController* controller in self.viewControllers) {
        UITabBarItem* anItem = controller.tabBarItem;
        [itemsOfTabBar addObject:[[VSTabBarItem alloc] initWithImage:anItem.image andTitle:anItem.title]];
    }
    [aBabar setItems:itemsOfTabBar];
}

-(void) tabBar:(VSTabBar *)tabBar selectedItemWithIndex:(NSInteger)index {
    if(self.delegate != nil) {
        if([self.delegate respondsToSelector:@selector(tabBar:didSelectItem:)]) {
            [self.delegate performSelector:@selector(tabBar:didSelectItem:) withObject:self.tabBar withObject:[[self.viewControllers objectAtIndex:index] tabBarItem]];
        }
    }
}

@end
