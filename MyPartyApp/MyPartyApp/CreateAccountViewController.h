//
//  CreateAccountViewController.h
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/19/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CreateAccountViewController;

@protocol CreateAccountViewControllerDelegate<NSObject>

- (void)createAccountViewControllerDidCancel:(CreateAccountViewController*)c;

@end

@interface CreateAccountViewController : UITableViewController

@property (weak, nonatomic) id <CreateAccountViewControllerDelegate> delegate;

@end
