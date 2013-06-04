//
//  TopTableViewController.m
//  LeftListSlideDemo
//
//  Created by Nanda Ballabh on 20/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import "TopTableViewController.h"
#import "LeftViewController.h"
#import "AppDelegate.h"
#import "MainViewController.h"

@interface TopTableViewController ()

@end

@implementation TopTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        self.title = @"Expense Summary";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];    
    UIImage* image3 = [UIImage imageNamed:@"list.png"];
    CGRect frameimg = CGRectMake(0, 0, 30, 30);
    UIButton *listButton = [[UIButton alloc] initWithFrame:frameimg];
    [listButton setBackgroundImage:image3 forState:UIControlStateNormal];
    [listButton addTarget:self action:@selector(listButtonClicked)
         forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *listBarButton =[[UIBarButtonItem alloc] initWithCustomView:listButton];
    self.navigationItem.leftBarButtonItem = listBarButton;
    self.tableView.scrollEnabled = NO;
}

-(void)listButtonClicked
{
    [self.topViewDelegate showListButtonClicked];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TopTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = @"Test Demo Left slideView";
        return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
