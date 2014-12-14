//
//  DDEmotionsViewController.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import "EmojiFaceView.h"
@protocol DDEmotionsViewControllerDelegate<NSObject>
-(void)insertEmojiFace:(NSString *)string;
-(void)deleteEmojiFace;
- (void)emotionViewClickSendButton;

@end
@interface EmotionsViewController : UIViewController<facialViewDelegate,UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageControl;
@property(assign)BOOL isOpen;
@property(nonatomic,assign)id<DDEmotionsViewControllerDelegate>delegate;
@end
