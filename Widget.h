//
//  Widget.h
//  Appcraft
//
//  Created by Andrei on 10/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WidgetController;

@interface Widget : NSObject

@property (nonatomic, unsafe_unretained) IBOutlet WidgetController *controller;
@property (nonatomic, strong) IBOutlet UIView *view;
@property UIInterfaceOrientation orientation;

- (void)updateToOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
- (void)willAppear:(BOOL)animated;
- (void)willDisappear:(BOOL)animated;


- (void)goToPortrait;
- (void)goToLandscape;

@end
