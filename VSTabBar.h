//
//  VSTabBar.h
//
//  Created by Vincent Saluzzo on 25/05/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VSTabBarItem.h"
#import "UIImage+ImageProcessing.h"

@class VSTabBar;

@protocol VSTabBarDelegate <NSObject>

-(void) tabBar:(VSTabBar*)tabBar selectedItemWithIndex:(NSInteger)index;

@end


@interface VSTabBar : UIView {
    NSArray* _items;
    
    BOOL _drawTitle;
    BOOL _drawImage;
    BOOL _showCurrentSelected;
    BOOL _showSeparationBetweenItems;
    BOOL _showSelectedItem;
    BOOL _isTopBar;
    UIColor* _backgroundColor;
    UIColor* _selectionGradientColor;
    UIColor* _currentSelectionIndicatorColor;
    UIColor* _separatorColor;
    UIColor* _foregroundColor;
    
    NSInteger _selectedItem;
    NSMutableArray* _itemsView;
    NSInteger _currentItemViewed;
    
    id<VSTabBarDelegate> delegate;
}

@property (nonatomic, assign) BOOL drawTitle;
@property (nonatomic, assign) BOOL drawImage;
@property (nonatomic, assign) BOOL showCurrentSelected;
@property (nonatomic, assign) BOOL showSeparationBetweenItems;
@property (nonatomic, assign) BOOL showSelectedItem;
@property (nonatomic, assign) BOOL isTopBar;
@property (nonatomic, retain) UIColor* backgroundColor;
@property (nonatomic, retain) UIColor* selectionGradientColor;
@property (nonatomic, retain) UIColor* currentSelectionIndicatorColor;
@property (nonatomic, retain) UIColor* separatorColor;
@property (nonatomic, retain) UIColor* foregroundColor;
@property (nonatomic, assign) id<VSTabBarDelegate> delegate;

-(void) setItems:(NSArray*)items;
-(void) selectItem:(NSInteger)index;
@end
