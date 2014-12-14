//
//  DDRecordingView.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DDRecordingState)
{
    DDShowVolumnState,
    DDShowCancelSendState,
    DDShowRecordTimeTooShort
};

@interface RecordingView : UIView
@property (nonatomic,assign)DDRecordingState recordingState;

- (instancetype)initWithState:(DDRecordingState)state;
- (void)setVolume:(float)volume;

@end
