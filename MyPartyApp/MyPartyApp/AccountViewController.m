//
//  AccountViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/19/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(edit:)];
    self.title = @"MURRARAR";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Buttons

- (void)edit:(id)sender{
    
}

- (void)back:(id)sender{
    [self.delegate accountViewControllerDidFinish:self];
}

@end
