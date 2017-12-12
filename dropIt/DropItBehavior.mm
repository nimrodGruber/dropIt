// Copyright (c) 2017 Lightricks. All rights reserved.
// Created by nimrod gruber.

#import "DropItBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface DropItBehavior()
@property (strong, nonatomic) UIGravityBehavior *gravity;
@property (strong, nonatomic) UICollisionBehavior *collider;
@property (strong, nonatomic) UIDynamicItemBehavior *animationOptions;
@end

@implementation DropItBehavior

- (UIGravityBehavior *)gravity {
  if (!_gravity) {
    _gravity = [[UIGravityBehavior alloc] init];
    _gravity.magnitude = 0.9;
  }
  return _gravity;
}

- (UICollisionBehavior *)collider {
  if (!_collider) {
    _collider = [[UICollisionBehavior alloc] init];
    _collider.translatesReferenceBoundsIntoBoundary = YES;
  }
  
  return _collider;
}


- (UIDynamicItemBehavior *)animationOptions {
  if (!_animationOptions) {
    _animationOptions = [[UIDynamicItemBehavior alloc] init];
    _animationOptions.allowsRotation = NO;
  }
  
  return _animationOptions;
}


- (void)addItem:(id <UIDynamicItem>)item {
  [self.gravity addItem:item];
  [self.collider addItem:item];
  [self.animationOptions addItem:item];
}


- (void)removeItem:(id <UIDynamicItem>)item {
  [self.gravity removeItem:item];
  [self.collider removeItem:item];
  [self.animationOptions removeItem:item];
}

- (instancetype)init {
  if (self = [super init]) {
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    [self addChildBehavior:self.animationOptions];
  }
  
  return self;
}

@end

NS_ASSUME_NONNULL_END
