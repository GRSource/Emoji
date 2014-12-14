//
//  DDEmojiFaceView.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol facialViewDelegate

-(void)selectedFacialView:(NSString*)str;

@end
@interface EmojiFaceView : UIView
@property(nonatomic,assign)id<facialViewDelegate>delegate;
-(void)loadFacialView:(int)page size:(CGSize)size;
@end
