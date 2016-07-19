//
//  UIView+ICETapAdd.h
//  ICE_Progect
//
//  Created by WLY on 16/3/31.
//  Copyright © 2016年 GMX. All rights reserved.
//


#if NS_BLOCKS_AVAILABLE

#import <UIKit/UIKit.h>

typedef void (^JMWhenTappedBlock)();

@interface UIView (ICETapAdd) <UIGestureRecognizerDelegate>

- (void)whenTapped:(JMWhenTappedBlock)block;
- (void)whenDoubleTapped:(JMWhenTappedBlock)block;
- (void)whenTwoFingerTapped:(JMWhenTappedBlock)block;
- (void)whenTouchedDown:(JMWhenTappedBlock)block;
- (void)whenTouchedUp:(JMWhenTappedBlock)block;

@end

#endif