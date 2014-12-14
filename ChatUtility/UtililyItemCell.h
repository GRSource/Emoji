//
//  DDUtililyItemCell.h
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridViewCell.h"
@class ChatUtilityItem;
@interface UtililyItemCell : AQGridViewCell
@property(nonatomic,strong)UIImageView *icon;
@property(nonatomic,strong)UILabel *title;
- (void)configureForItem:(ChatUtilityItem *)item;
@end
