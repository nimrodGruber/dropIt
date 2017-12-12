// Copyright (c) 2017 Lightricks. All rights reserved.
// Created by nimrod gruber.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DropItBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)itme;
- (void)removeItem:(id <UIDynamicItem>)item;

@end

NS_ASSUME_NONNULL_END
