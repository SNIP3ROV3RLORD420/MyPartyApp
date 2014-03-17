//
//  MapViewController.h
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "User.h"
#import "PPRevealSideViewController.h"

@interface MapViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (strong, nonatomic) PPRevealSideViewController *revealSideViewController;

- (IBAction)showLeft:(id)sender;

- (NSMutableArray*)allCurrentAvailableParties:(User*)u;                 //will be a list of all current available parties based on the settings of the User
@end
