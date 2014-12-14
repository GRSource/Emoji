//
//  DDTouchDownGestureRecognizer.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^DDTouchDown)();
typedef void(^DDTouchMoveOutside)();
typedef void(^DDTouchMoveInside)();
typedef void(^DDTouchEnd)(BOOL inside);
@class DDCustomButton;
@interface TouchDownGestureRecognizer : UIGestureRecognizer
@property (nonatomic,copy) DDTouchDown touchDown;
@property (nonatomic,copy) DDTouchMoveOutside moveOutside;
@property (nonatomic,copy) DDTouchMoveInside moveInside;
@property (nonatomic,copy) DDTouchEnd touchEnd;

@end
