//
//  MainViewController.h
//  LeftListSlideDemo
//
//  Created by Nanda Ballabh on 22/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftViewController.h"
#import "TopTableViewController.h"

@interface MainViewController : UIViewController<LeftViewControllerDelegate,TopTableViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *listView;
@property (weak, nonatomic) IBOutlet UIView *mainview;
@property (weak, nonatomic) IBOutlet UIButton *shieldbutton;
@property (strong, nonatomic)  UINavigationController *naviController;
@property (nonatomic)  BOOL isListVisible;
@property (strong) LeftViewController *leftViewController;
-(void)commitAnimation;
@end;
