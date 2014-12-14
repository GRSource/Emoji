//
//  DDTouchDownGestureRecognizer.m
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import "TouchDownGestureRecognizer.h"

#define Response_Y                  -30

@implementation TouchDownGestureRecognizer
{
    BOOL _inside;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    self.button.touchDown();
    _inside = YES;
    if (self.touchDown)
    {
        self.touchDown();
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (point.y < Response_Y)
    {
        if (_inside)
        {
            _inside = NO;
            self.moveOutside();
        }
    }
    if (point.y > Response_Y)
    {
        if (!_inside)
        {
            _inside = YES;
            self.moveInside();
        }
    }
    NSLog(@"%@",NSStringFromCGPoint(point));
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (point.y > Response_Y)
    {
        self.touchEnd(YES);
    }
    else
    {
        self.touchEnd(NO);
    }
}
@end
