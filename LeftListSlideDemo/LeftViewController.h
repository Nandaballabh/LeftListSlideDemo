//
//  LeftViewController.h
//  LeftListSlideDemo
//
//  Created by Nanda Ballabh on 21/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LeftViewControllerDelegate <NSObject>

- (void)animateToPage:(NSIndexPath*)selectedIndex;
@end

@interface LeftViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *listTable;
@property (weak) id<LeftViewControllerDelegate> leftDelegate;

@end
