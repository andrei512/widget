//
//  WigetController.h
//  Appcraft
//
//  Created by Andrei on 10/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Widget.h"

@interface WidgetController : UIViewController

@property (nonatomic, strong) IBOutletCollection(Widget) NSMutableArray *widgets;

- (void)addWidget:(Widget *)widget;
- (void)removeWidget:(Widget *)widget;

@end
