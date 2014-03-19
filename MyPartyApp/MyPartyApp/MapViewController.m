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

@synthesize map;

#pragma mark - Managing the view

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UI methods

- (void)goToCurrentLocation:(id)sender{
    //implement this method
}
- (IBAction)showLeft:(id)sender {
    [self.revealSideViewController pushOldViewControllerOnDirection:PPRevealSideDirectionLeft animated:YES completion:^{PPRSLog(@"Pushed")}];
}



#pragma mark - Event methods
- (NSMutableArray*)allCurrentAvailableParties:(User *)u{
    NSMutableArray *temp;                                   //write method later
    return temp;
}

@end
