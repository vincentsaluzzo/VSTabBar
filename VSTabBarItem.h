//
//  VSTabBarItem.h
//
//  Created by Vincent Saluzzo on 25/05/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VSTabBarItem : NSObject {
    UIImage* _image;
    NSString* _title;
}
@property(nonatomic,retain) UIImage* image;
@property(nonatomic,retain) NSString* title;

-(id) initWithImage:(UIImage*)anImage andTitle:(NSString*)aTitle;
-(id) initWithImage:(UIImage*)anImage;
-(id) initWithTitle:(NSString*)aTitle;

@end
