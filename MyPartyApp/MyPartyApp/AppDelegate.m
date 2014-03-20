//
//  AppDelegate.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "AppDelegate.h"
#import "MapViewController.h"
#import "SideViewController.h"
#import "LoginViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize revealSideViewController = _revealSideViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //managing the reveal side view controller
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    self.revealSideViewController = [[PPRevealSideViewController alloc]initWithRootViewController:nav];
    
    [self.revealSideViewController setPanInteractionsWhenClosed:PPRevealSideInteractionNone];
    [self.revealSideViewController setTapInteractionsWhenOpened:PPRevealSideInteractionContentView];
    [self.revealSideViewController setPanInteractionsWhenOpened:PPRevealSideInteractionNone];
    
    UINavigationController *nav2 = [storyboard instantiateViewControllerWithIdentifier:@"nav2"];
    [self.revealSideViewController preloadViewController:nav2 forSide:PPRevealSideDirectionBottom];
    
    self.window.rootViewController = self.revealSideViewController;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
