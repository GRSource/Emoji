//
//  DetailViewController.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/12.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSMessageInputView.h"
#import "JSMessageTextView.h"
#import "EmotionsViewController.h"
#import "RecorderManager.h"
#import "PlayerManager.h"
#import "ChatUtilityViewController.h"
@class RecordingView;
@interface DetailViewController : UIViewController<JSMessageInputViewDelegate, UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate, DDEmotionsViewControllerDelegate, RecordingDelegate, PlayingDelegate, ChatUtilityViewControllerDelegate>
{
    RecordingView* _recordingView;
}
@property (strong, nonatomic) id detailItem;
@property(nonatomic,strong)JSMessageInputView *chatInputView;
@property(nonatomic,strong)ChatUtilityViewController *ddUtility;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)EmotionsViewController *emotions;
@end

