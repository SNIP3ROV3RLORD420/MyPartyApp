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


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:self];
    _revealSideViewController = [[PPRevealSideViewController alloc]initWithRootViewController:nav];
    
    [self.view addSubview:_revealSideViewController.view];
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

- (IBAction)showLeft:(id)sender {
}
@end
