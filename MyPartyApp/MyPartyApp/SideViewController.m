//
//  SideViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "SideViewController.h"

@interface SideViewController ()

@end

@implementation SideViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *i = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:i];
    if (!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:i];
    }
    
    if (indexPath.row == 0)
        cell.textLabel.text = @"My Account";
    if (indexPath.row == 1)
        cell.textLabel.text = @"Nearby Events";
    if (indexPath.row == 2)
        cell.textLabel.text = @"Settings";
    if (indexPath.row == 3)
        cell.textLabel.text = @"About";
    if (indexPath.row == 4)
        cell.textLabel.text = @"Other";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0){
        AccountViewController *av = [self.storyboard instantiateViewControllerWithIdentifier:@"Account"];
        [self.navigationController pushViewController:av animated:YES];
    }
}

#pragma mark - AccountViewController

- (void)accountViewControllerDidFinish:(AccountViewController *)a{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
