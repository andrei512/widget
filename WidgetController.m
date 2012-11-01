//
//  WigetController.m
//  Appcraft
//
//  Created by Andrei on 10/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WidgetController.h"

@implementation WidgetController

@synthesize widgets;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        for (Widget *widget in self.widgets) {
            widget.controller = self;
        }
    }
    return self;
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    for (Widget *widget in self.widgets) {
        [widget updateToOrientation:toInterfaceOrientation];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    for (Widget *widget in self.widgets) {
        [widget willAppear:animated];
    }    
}

- (void)viewWillDisappear:(BOOL)animated {
    for (Widget *widget in self.widgets) {
        [widget willDisappear:animated];
    }        
}

- (void)addWidget:(Widget *)widget {
    widget.controller = self;
    [self.widgets addObject:widget];
}

- (void)removeWidget:(Widget *)widget {
    if ([self.widgets containsObject:widget]) {
        widget.controller = nil;    
        [self.widgets removeObjectIdenticalTo:widget];
    }
}


@end
