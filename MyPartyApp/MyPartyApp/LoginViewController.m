//
//  ViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "LoginViewController.h"
#import "SideViewController.h"
#import "MapViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize username, password, errorMessage;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logIn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{PPRSLog(@"Logged in")}];
}

- (IBAction)create:(id)sender {
    CreateAccountViewController *cv = [self.navigationController viewControllers][0];
    [self.navigationController pushViewController:cv animated:YES];
}

#pragma mark - Create Account View Controller delegate

- (void)createAccountViewControllerDidCancel:(CreateAccountViewController *)c{
    [self dismissViewControllerAnimated:YES completion:^{PPRSLog(@"Dismissed Create Account")}];
}

@end
