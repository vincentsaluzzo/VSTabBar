//
//  VSTabBarItem.m
//
//  Created by Vincent Saluzzo on 25/05/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "VSTabBarItem.h"

@implementation VSTabBarItem
@synthesize image;
@synthesize title;

-(id)initWithImage:(UIImage *)anImage andTitle:(NSString *)aTitle {
    self = [super init];
    if(self) {
        self.image = anImage;
        self.title = aTitle;
    }
    return self;
}

-(id)initWithImage:(UIImage *)anImage {
    return [self initWithImage:anImage andTitle:nil];
}

-(id)initWithTitle:(NSString *)aTitle {
    return [self initWithImage:nil andTitle:aTitle];
}
@end
