//
//  VSViewController.m
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 30/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VSViewController.h"
@interface VSViewController ()

@end

@implementation VSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    VSTabBar* theTabBarBlack = [[VSTabBar alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-50, self.view.frame.size.width, 50)];
    VSTabBar* theTabBarGreen = [[VSTabBar alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 50)];
    VSTabBar* theTabBarCyan = [[VSTabBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    VSTabBar* theTabBarRed = [[VSTabBar alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-100, self.view.frame.size.width, 50)];
    
    theTabBarRed.backgroundColor = [UIColor redColor];
    theTabBarGreen.backgroundColor = [UIColor greenColor];
    theTabBarCyan.backgroundColor = [UIColor cyanColor];
    
    theTabBarRed.delegate = self;
    theTabBarGreen.delegate = self;
    theTabBarCyan.delegate = self;
    theTabBarBlack.delegate = self;

    NSArray* array = [[NSArray alloc] initWithObjects:
                        [[VSTabBarItem alloc] initWithImage:[UIImage imageNamed:@"Money-Bag.png"] andTitle:@"Have Money"],
                        [[VSTabBarItem alloc] initWithImage:[UIImage imageNamed:@"Basket.png"] andTitle:@"Get Beer"],
                        [[VSTabBarItem alloc] initWithImage:[UIImage imageNamed:@"Beer.png"] andTitle:@"Drink !"],
                        nil];
    
    [theTabBarBlack setItems:array];
    [theTabBarGreen setItems:array];
    [theTabBarCyan setItems:array];
    [theTabBarRed setItems:array];
    
    theTabBarCyan.isTopBar = YES;
    theTabBarRed.isTopBar = YES;
    
    theTabBarCyan.drawTitle = NO;
    theTabBarBlack.drawImage = NO;
    
    [self.view addSubview:theTabBarBlack];
    [self.view addSubview:theTabBarCyan];
    [self.view addSubview:theTabBarGreen];
    [self.view addSubview:theTabBarRed];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)tabBar:(VSTabBar *)tabBar selectedItemWithIndex:(NSInteger)index {
    switch (index) {
        case 0:
            [label setText:@"I have Money"];
            [image setImage:[[UIImage imageNamed:@"Money-Bag.png"] tintWithColor:tabBar.backgroundColor]];
            break;
            
        case 1:
            [label setText:@"I Buy a lot of Beer"];
            [image setImage:[[UIImage imageNamed:@"Basket.png"] tintWithColor:tabBar.backgroundColor]];
            break;
            
        case 2:
            [label setText:@"I dring all the Beer !"];
            [image setImage:[[UIImage imageNamed:@"Beer.png"] tintWithColor:tabBar.backgroundColor]];
            break;
            
        default:
            break;
    }
}

@end
