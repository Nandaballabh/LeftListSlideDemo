//
//  TopTableViewController.h
//  LeftListSlideDemo
//
//  Created by Nanda Ballabh on 20/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TopTableViewControllerDelegate <NSObject>
- (void)showListButtonClicked;
@end

@interface TopTableViewController : UITableViewController
{
    UILabel *currentExpense;
}
@property (weak) id<TopTableViewControllerDelegate> topViewDelegate;
@end
