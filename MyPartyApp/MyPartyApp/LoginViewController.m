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
    MapViewController *mv = [self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:mv];
    SideViewController *sv = [[SideViewController alloc]init];
    [self.revealSideViewController preloadViewController:sv forSide:PPRevealSideDirectionLeft];
    [self.revealSideViewController popViewControllerWithNewCenterController:nav animated:YES completion:^{PPRSLog(@"Poped Map")}];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //set delegate and user for account when segueing to map View after succeful log in
    if ([[segue identifier] isEqualToString:@"map"]){
        /*
         Will implement later --> Get User based on Username.text and password.text inside database of accounts
         
         NSArray *accounts= [database getAccounts];
         for (User *usa in accounts){
            if ([usa.username isEqualToString:username.text])
                [map setAccount:usa];
         }
         */

    }
}
@end
