//
//  DDEmotionsModule.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmotionsModule : NSObject
@property (nonatomic,readonly)NSArray* emotions;
@property (nonatomic,readonly)NSDictionary* emotionUnicodeDic;
@property (nonatomic,readonly)NSDictionary* unicodeEmotionDic;
@property (nonatomic,readonly)NSDictionary* emotionLength;
+ (instancetype)shareInstance;
@end
