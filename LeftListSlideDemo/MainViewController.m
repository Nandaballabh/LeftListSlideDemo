//
//  MainViewController.m
//  LeftListSlideDemo
//
//  Created by Nanda Ballabh on 22/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import "MainViewController.h"
#import "LeftViewController.h"
#import "TopTableViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.leftViewController = [[LeftViewController alloc]initWithNibName:@"LeftViewController" bundle:nil];
    self.leftViewController.leftDelegate = self;
    [self.listView addSubview:self.leftViewController.view];
    [self.shieldbutton setHidden:YES];
    [self setupViewControllers];
}


#pragma mark LMWTopViewController Delegate
-(void)showListButtonClicked
{
    [self commitAnimation];
}

-(IBAction)shieldButtonClicked:(id)sender
{
    [self commitAnimation];
}

-(void)commitAnimation
{
    [UIView animateWithDuration:0.4 animations:^
     {
         CGRect frame = self.mainview.frame;
         if (!self.isListVisible)
             frame.origin.x = 250;
         else
             frame.origin.x = 0;
         
         self.mainview.frame = frame;
         
     }
                     completion:^(BOOL finished)
     {
         if (!self.isListVisible)
         {
             self.isListVisible  =YES;
             [self.shieldbutton setHidden:NO];
         }
         else
         {
             self.isListVisible  =NO;
             [self.shieldbutton setHidden:YES];
         }
     }];
}

-(CGRect)getMainView
{
    return self.mainview.frame;
}

-(void)setupViewControllers
{
    TopTableViewController *topView = [[TopTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    topView.topViewDelegate = self;
    self.naviController = [[UINavigationController alloc] initWithRootViewController:topView];
	[self addChildViewController:self.naviController];
    [self.mainview insertSubview: self.naviController.view belowSubview:self.shieldbutton];
    if ([[UIScreen mainScreen] bounds].size.height <= 480.0f)
    {
        CGRect frame = self.mainview.frame;
        frame.size.height += 68;
        [self.mainview setFrame:frame];
    }
}



#pragma mark ListViewController Delegate

- (void)animateToPage:(NSIndexPath*)indexPath
{
    [self commitAnimation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
