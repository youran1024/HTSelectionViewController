//
//  ViewController.m
//  JRJSelectionController
//
//  Created by Mr.Yang on 14/12/31.
//  Copyright (c) 2014年 Mr.Yang. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+ColorExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSArray *)functionTitles
{
    return @[@"1", @"2", @"3", @"4", @"5"];
}

- (NSArray *)selectionControllers
{
    NSMutableArray *mutArray = [NSMutableArray array];
    
    for (int i = 0; i < 5; i++) {
        UIViewController *viewController = [[UIViewController alloc] init];
        viewController.title = [NSString stringWithFormat:@"%d", i];
        [mutArray addObject:viewController];
        viewController.view.backgroundColor = [UIColor randomColor];
    }

    
    return mutArray;
}

@end
