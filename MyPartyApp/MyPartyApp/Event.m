//
//  Event.m
//  MyPartyApp
//
//  Created by Dylan Humphrey on 3/16/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "Event.h"

@implementation Event

@synthesize eventName, eventDate, eventDescription, eventLocation, maxCapacity, invited, hosts, blacklist, BYOB, Private, ageBased, rolled, price;

- (void)addHost:(User *)u{
    BOOL isAHost = NO;
    for (User *aUser in hosts){
        if ([aUser.username isEqualToString:u.username]) {
            isAHost = YES;
        }
    }
    if (!isAHost) {
        [hosts insertObject:u atIndex:0];
    }
    else
        NSLog(@"Already a Host");
}

- (void)removeHost:(User *)u{
    [hosts removeObject:u];
}

- (void)addGuest:(User *)u{
    BOOL isInvited = NO;
    for (User *aUser in invited){
        if ([aUser.username isEqualToString:u.username]) {
            isInvited = YES;
        }
    }
    if (!isInvited) {
        [invited insertObject:u atIndex:0];
    }
    else
        NSLog(@"Already a Guest");
}

- (void)removeGuest:(User *)u{
    [invited removeObject:u];
}

- (void)blacklistGuest:(User *)u{
    BOOL isBlackListed = NO;
    for (User *aUser in blacklist){
        if ([aUser.username isEqualToString:u.username]) {
            isBlackListed = YES;
        }
    }
    if (!isBlackListed) {
        [blacklist insertObject:u atIndex:0];
    }
    else
        NSLog(@"Already a User");
}

- (void)removeGuestFromBlacklist:(User *)u{
    [blacklist removeObject:u];
}

- (NSMutableArray*)presentGuests{
    NSMutableArray *arrived = [[NSMutableArray alloc]init];
    for (User *aUser in invited){
        if ([aUser hasArrived:self]) {
            [arrived insertObject:aUser atIndex:0];
        }
    }
    return arrived;
}

- (NSMutableArray*)notPresentGuests{
    NSMutableArray *notArrived = [[NSMutableArray alloc]init];
    for (User *aUser in invited){
        if (![aUser hasArrived:self]) {
            [notArrived insertObject:aUser atIndex:0];
        }
    }
    return notArrived;
}

- (float)percentFemale{
    int femaleCount = 0;
    int maleCount = 0;
    NSMutableArray *presentGuests = self.presentGuests;
    for (User *aUser in presentGuests){
        if (aUser.gender == GenderMale) {
            maleCount++;
        }
        if (aUser.gender == GenderFemale){
            femaleCount++;
        }
        if (aUser.gender == GenderTranny){
            maleCount++;
            femaleCount++;
        }
    }
    return femaleCount / (maleCount + femaleCount);
}

- (int)currentNumberOfGuests{
    NSMutableArray *currentGuests = self.presentGuests;
    return currentGuests.count;
}

@end
