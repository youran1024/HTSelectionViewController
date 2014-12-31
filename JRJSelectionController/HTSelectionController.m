//
//  JRJSelectionController.m
//  JRJInvestAdviser
//
//  Created by Mr.Yang on 14-10-15.
//  Copyright (c) 2014年 Mr.Yang. All rights reserved.
//


#import "HTSelectionController.h"

#define APPScreenFrame      [[UIScreen mainScreen] applicationFrame]
#define APPScreenWidth      APPScreenFrame.size.width
#define APPScreenHeight     APPScreenFrame.size.height
#define RealScreenHeight    [UIScreen mainScreen].bounds.size.height

#define APPKeyWindow        [UIApplication sharedApplication].keyWindow
#define SelfViewFrame       self.view.frame
#define SelfViewWidth       SelfViewFrame.size.width
#define SelfViewHeight      SelfViewFrame.size.height

#define WeakSelf(VC)        __weak VC *weakSelf = self

@interface HTSelectionController () <UIScrollViewDelegate>


@end

@implementation HTSelectionController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //  从外边传过来的array
    [self initContentSubViewsWithTitleArray:nil];
}

- (void)initContentSubViewsWithTitleArray:(NSArray *)array
{
    if (array) {
        _functionTitles = array;
    }

    if (self.functionTitles.count == 1) {
        
        //  添加动态，消息，观点视图
        [self addContentViewController];
        
    }else if (self.functionTitles.count > 1) {
        
        //  导航条
        [self.view addSubview:self.separateView];
        
        //  多页切换控制
        [self.view addSubview:self.pageScrollView];
        
        //  添加动态，消息，观点视图
        [self addContentViewController];
    }
    
}

- (void)isHaveMessage:(BOOL)isHaveMessage atIndex:(NSInteger)index
{
    [self.separateView isHaveMessage:isHaveMessage atIndex:index];
}

- (NSInteger)selectedButtonIndex
{
    return [self.separateView indexSelectedButton];
}

/**
 *  AddSubControllers
 */
- (void)addContentViewController
{
    CGFloat viewHeight = SelfViewHeight - self.separateView.height;
    CGFloat viewWidth = SelfViewWidth;
    
    NSArray *controllers = self.selectionControllers;
    
    if (self.selectionControllers.count == 1) {
        viewHeight = SelfViewHeight;
    }
    
    for (UIViewController *controller in controllers) {
        NSInteger index = [controllers indexOfObject:controller];
        
        controller.view.frame = CGRectMake(viewWidth * index, 0, viewWidth, viewHeight);
        
        [controller willMoveToParentViewController:self];
        
        if (self.selectionControllers.count == 1) {
            [self.view addSubview:controller.view];
        }else {
            [_pageScrollView addSubview:controller.view];
        }
        
        [self addChildViewController:controller];
        [controller didMoveToParentViewController:self];
        
    }
    
    if (self.selectionControllers.count > 0) {
        _pageScrollView.contentSize = CGSizeMake(SelfViewWidth * self.functionTitles.count, 0);
    }
    
}

/**
 *  SubControllers End
 */

- (UIScrollView *)pageScrollView
{
    if (!_pageScrollView) {
        CGFloat height = CGRectGetHeight(_separateView.frame);
        _pageScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, height, SelfViewWidth, SelfViewHeight - height)];
        _pageScrollView.scrollsToTop = NO;
        _pageScrollView.bounces = NO;
        _pageScrollView.delegate = self;
        _pageScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
        _pageScrollView.showsHorizontalScrollIndicator = NO;
        _pageScrollView.showsVerticalScrollIndicator = NO;
        _pageScrollView.pagingEnabled = YES;
    }
    
    return _pageScrollView;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    [_separateView selectButtonAtIndex:index animated:YES];
}

- (HTSeparateView *)separateView
{
    if (!_separateView) {
        _separateView =[[HTSeparateView alloc] initWithFrame:CGRectMake(0, 0, SelfViewWidth, 0)];
        _separateView.htdelegate = self;
        NSArray *titleArray = self.functionTitles;
    
        WeakSelf(HTSelectionController);
        [_separateView setButtonClicked:^(NSInteger index) {
        
            [weakSelf.pageScrollView setContentOffset:CGPointMake(CGRectGetWidth(weakSelf.view.frame) * index, 0) animated:NO];
            
        }];
        
        [_separateView setTitles:titleArray];
    }
    
    return _separateView;
}

//  MARK: 是否可以改变导航标签   separate的代理
- (BOOL)separateViewShouldChangeMenuAtIndex:(NSInteger)index
{   
    if (!self.selectionControllers) {
        return NO;
    }
    
    id controller = [self.selectionControllers objectAtIndex:index];
 
    
    NSInteger selectIndex = [self selectedButtonIndex];
    
    if (selectIndex >= self.selectionControllers.count) {
        return YES;
    }
    
    id willChangeController = [self.selectionControllers objectAtIndex:[self selectedButtonIndex]];
    controller = willChangeController;

    return YES;
}

#pragma mark - Message
- (void)setIsHaveMessage:(BOOL)isHaveMessage
{
    if (_isHaveMessage != isHaveMessage) {
        _isHaveMessage = isHaveMessage;
        
        [self.separateView isHaveMessage:_isHaveMessage];
    }
}

@end
