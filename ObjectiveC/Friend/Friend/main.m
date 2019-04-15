//
//  main.m
//  Friend
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Friend.h"
#import "FreindManager.h"

int main(int argc, const char * argv[]) {
    Friend * first = [Friend new];
    Friend * second = [Friend new];
    first.friendId = 1;
    first.name = @"Yasmin";
    first.phone = 0000;
    first.email = @"hh@yahooo.com";
    first.age = 30;
    
    second.friendId = 2;
    second.name = @"second";
    second.phone = 0000;
    second.email = @"second@yahooo.com";
    second.age = 25;
    
    
    FreindManager * manager = [FreindManager new];
    [manager initArr];
    [manager addFriend:first];
    [manager addFriend:second];

    [manager printArr];
    
    [manager deleteFreind:first];
    
    NSMutableArray * mutableArr = [manager getALLFriends];
    
    [manager printArr];
    return NSApplicationMain(argc, argv);
}
