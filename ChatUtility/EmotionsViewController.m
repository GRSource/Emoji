//
//  DDEmotionsViewController.m
//  Emoji
//
//  Created by YiLiFILM on 14/12/13.
//  Copyright (c) 2014年 YiLiFILM. All rights reserved.
//

#import "EmotionsViewController.h"

@interface EmotionsViewController ()

- (void)clickTheSendButton:(id)sender;

@end
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define  keyboardHeight 216
#define  facialViewWidth SCREEN_WIDTH-20
#define facialViewHeight 170
#define  DD_EMOTION_MENU_HEIGHT             50
@implementation EmotionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 216);
    if (self.scrollView==nil) {
        self.scrollView=[[UIScrollView alloc] initWithFrame:self.view.frame];
        [self.scrollView setBackgroundColor:[UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1.0]];
        for (int i=0; i<2; i++) {
            EmojiFaceView *fview=[[EmojiFaceView alloc] initWithFrame:CGRectMake(10+SCREEN_WIDTH*i, 5, facialViewWidth, facialViewHeight)];
            [fview setBackgroundColor:[UIColor clearColor]];
            [fview loadFacialView:i size:CGSizeMake(42/320.0*SCREEN_WIDTH, 42/320.0*SCREEN_WIDTH)];
            fview.delegate=self;
            [self.scrollView addSubview:fview];
        }
    }
    [self.scrollView setShowsVerticalScrollIndicator:NO];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    self.scrollView.contentSize=CGSizeMake(SCREEN_WIDTH*2, keyboardHeight);
    self.scrollView.pagingEnabled=YES;
    self.scrollView.delegate=self;
    [self.view addSubview:self.scrollView];
    
    self.pageControl=[[UIPageControl alloc]initWithFrame:CGRectMake((SCREEN_WIDTH/2+10)/2, self.view.frame.size.height-30 - DD_EMOTION_MENU_HEIGHT, (SCREEN_WIDTH - 20)/2, 30)];
    [self.pageControl setCurrentPage:0];
    self.pageControl.pageIndicatorTintColor=[UIColor whiteColor];
    self.pageControl.currentPageIndicatorTintColor=[UIColor colorWithRed:245/255.0 green:62/255.0 blue:102/255.0 alpha:1.0];
    self.pageControl.numberOfPages = 2;
    [self.pageControl setBackgroundColor:[UIColor clearColor]];
    [self.pageControl addTarget:self action:@selector(changePage:)forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.pageControl];
    
    UIView* menuView = [[UIView alloc] initWithFrame:CGRectMake(0, keyboardHeight - DD_EMOTION_MENU_HEIGHT, SCREEN_WIDTH, DD_EMOTION_MENU_HEIGHT)];
    [menuView setBackgroundColor:[UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:1.0]];
    UIButton* sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [sendButton addTarget:self action:@selector(clickTheSendButton:) forControlEvents:UIControlEventTouchUpInside];
    [sendButton setFrame:CGRectMake(238/320.0*SCREEN_WIDTH, 11, 72, 28)];
    UIImage* backgroundImage = [UIImage imageNamed:@"dd_image_send"];
    [sendButton setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [sendButton setTitle:@"发送" forState:UIControlStateNormal];
    [menuView addSubview:sendButton];
    [self.view addSubview:menuView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)scrollViewDidScroll:(UIScrollView *)sender {
    int page = self.scrollView.contentOffset.x / SCREEN_WIDTH;
    self.pageControl.currentPage = page;
}
-(void)selectedFacialView:(NSString*)str
{
    if ([str isEqualToString:@"delete"]) {
        [self.delegate deleteEmojiFace];
        return;
    }
    [self.delegate insertEmojiFace:str];
}
- (IBAction)changePage:(id)sender {
    NSInteger page = self.pageControl.currentPage;
    [self.scrollView setContentOffset:CGPointMake(SCREEN_WIDTH * page, 0)];
}

#pragma mark - privateAPI
- (void)clickTheSendButton:(id)sender
{
    if (self.delegate)
    {
        [self.delegate emotionViewClickSendButton];
    }
}
@end
