//
//  ViewController.h
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "CreateAccountViewController.h"
#import "PPRevealSideViewController.h"

@interface LoginViewController : UIViewController <CreateAccountViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UILabel *errorMessage;


- (IBAction)logIn:(id)sender;
- (IBAction)create:(id)sender;

@end
