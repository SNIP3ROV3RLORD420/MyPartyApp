//
//  MapViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "MapViewController.h"
#import "SideViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize map;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Our app";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Show"
                                                                             style:UIBarButtonItemStyleBordered
                                                                            target:self
                                                                           action:@selector(showLeft:)];
    [self.view addSubview:self.revealSideViewController.view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)showLeft:(id)sender {
    [self.revealSideViewController pushOldViewControllerOnDirection:PPRevealSideDirectionLeft animated:YES];
}

@end
