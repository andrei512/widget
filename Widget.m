//
//  Widget.m
//  Appcraft
//
//  Created by Andrei on 10/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Widget.h"

@implementation Widget

@synthesize controller;
@synthesize orientation;
@synthesize view;

- (void)updateToOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    self.orientation = toInterfaceOrientation;
    
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        [self goToLandscape];
    } else {
        [self goToPortrait];
    }
}

- (void)willAppear:(BOOL)animated {
    
}

- (void)willDisappear:(BOOL)animated {
    
}


- (void)goToPortrait {
    
}

- (void)goToLandscape {
    
}



@end
