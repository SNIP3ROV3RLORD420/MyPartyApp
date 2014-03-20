//
//  MapViewController.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "MapViewController.h"
#import "SideViewController.h"

@interface MapViewController (){
    NSMutableArray *allCurrentEvents;
}

@end

@implementation MapViewController

@synthesize map;

#pragma mark - Managing the view

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self performSelector:@selector(popLoginView) withObject:nil afterDelay:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UI methods

- (IBAction)insertEvent:(id)sender{
    
}

- (IBAction)showLeft:(id)sender {
    [self.revealSideViewController pushOldViewControllerOnDirection:PPRevealSideDirectionBottom animated:YES completion:^{PPRSLog(@"Pushed")}];
}

- (void)popLoginView{
    LoginViewController *lv = [self.storyboard instantiateViewControllerWithIdentifier:@"login"];
    [self presentViewController:lv animated:YES completion:^{PPRSLog(@"Presented")}];
}


#pragma mark - Event methods

@end
