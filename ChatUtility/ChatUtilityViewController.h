//
//  DDDDChatUtilityViewController.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@protocol ChatUtilityViewControllerDelegate <NSObject>


@end
@interface ChatUtilityViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,AQGridViewDataSource,AQGridViewDelegate>
@property(nonatomic,strong) UIImagePickerController *imagePicker;
@property(nonatomic,strong) AQGridView *gridView;
@property(nonatomic,assign) id<ChatUtilityViewControllerDelegate>delegate;
@end
