//
//  AccountViewController.h
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/19/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountViewController;

@protocol AccountViewControllerDelegate <NSObject>

- (void)accountViewControllerDidFinish:(AccountViewController*)a;

@end

@interface AccountViewController : UIViewController

@property (weak, nonatomic) id <AccountViewControllerDelegate> delegate;

@end
