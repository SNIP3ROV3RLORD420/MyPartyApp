//
//  ViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "LoginViewController.h"
#import "MapViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize username, password, errorMessage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logIn:(id)sender {
    //in this method access some sort of server side data base that stores all the accounts
    /*implementation would look something like this
    NSMutableArray *allAccounts = [dataBase getAccounts]; 
    for (Account in allAccounts){
     if (Account.name == username.text && Account.password == password.text)
         [self.NavigationController performSegue:toMap];
     else --> throw input mismatch exception ie...
          errorMessage.text = @"Wrong password or Username"
     }
     for now just peform the segue
     */
    [self.navigationController performSegueWithIdentifier:@"map" sender:self];
}

- (IBAction)createAccount:(id)sender {
    //no need for this method actually, just use storyboard to segue to a create account view controller
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //set delegate and user for account when segueing to map View after succeful log in
    if ([[segue identifier] isEqualToString:@"toMap"]){
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
