//
//  DropItBehavior.h
//  DropIt
//
//  Created by Stuart Claghorn on 7/27/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropItBehavior : UIDynamicBehavior
- (void) addItem:(id <UIDynamicItem>)item;
- (void) removeItem:(id <UIDynamicItem>)item;

@end
