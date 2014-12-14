//
//  DDUtililyItemCell.m
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import "UtililyItemCell.h"
#import "ChatUtilityItem.h"
@implementation UtililyItemCell

- (id)initWithFrame:(CGRect)frame  reuseIdentifier: (NSString *) aReuseIdentifier
{
    self = [super initWithFrame: frame reuseIdentifier: aReuseIdentifier];
    if ( self == nil )
        return ( nil );
        // Initialization code
    
        
        self.icon=[[UIImageView alloc] initWithFrame:frame];
        self.title =[[UILabel alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.size.height-13, self.frame.size.width, self.frame.size.height)];
        [self.title setFont:[UIFont systemFontOfSize:12]];
        [self.title setBackgroundColor:[UIColor clearColor]];
        [self.title setTextColor:[UIColor grayColor]];
    [self.title setTextAlignment:NSTextAlignmentCenter];
        [self.contentView addSubview:self.icon];
        [self.contentView addSubview:self.title];
        [self.contentView setBackgroundColor:[UIColor clearColor]];
        [self setBackgroundColor:[UIColor clearColor]];
    
    return self;
}
- (void)configureForItem:(ChatUtilityItem *)item
{
    [self.icon setImage:[UIImage imageNamed:item.itemLogo]];
    self.title.text = item.itemName;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
