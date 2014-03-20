//
//  SideViewController.h
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccountViewController.h"

@class SideViewController;

@protocol SideViewControllerDelegate <NSObject>

- (void)SideViewControllerWillSegue;

@end

@interface SideViewController : UITableViewController <AccountViewControllerDelegate>

@property (weak, nonatomic)id <SideViewControllerDelegate> delegate;

@end
