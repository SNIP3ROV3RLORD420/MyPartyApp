//
//  CreateAccountViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/19/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

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
    
    self.title = @"Create an Account";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                         target:self
                                                                                         action:@selector(cancel:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Create" style:UIBarButtonItemStyleDone target:self action:@selector(done:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)done:(id)sender{
    //implement more later, for now will just dismiss the modal view
    [self.delegate createAccountViewControllerDidCancel:self];
}

- (void)cancel:(id)sender{
    [self.delegate createAccountViewControllerDidCancel:self];
}

@end
