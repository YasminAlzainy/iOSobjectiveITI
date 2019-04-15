//
//  FreindManager.m
//  Friend
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "FreindManager.h"

@implementation FreindManager
{
}

- (void)initArr
{
    _mutableArr = [NSMutableArray new];
}
-(void) addFriend : (Friend *) friend
{
    [_mutableArr addObject:friend];
}
-(void) deleteFreind: (Friend *) friendTest
{
    [_mutableArr removeObjectIdenticalTo:friendTest ];
}
-(NSMutableArray *) getALLFriends
{
    return _mutableArr;
}

-(void) printArr{
    for (int i = 0 ; i < [_mutableArr count] ; i++)
    {
        printf("name: %s \n" , [[_mutableArr[i] name] UTF8String]);
        printf("id: %d \n" , [_mutableArr[i] friendId]);
        printf("age: %d \n" , [_mutableArr[i] age]);
        printf("phone %d \n" , [_mutableArr[i] phone]);
        printf("email: %s \n" , [[_mutableArr[i] email] UTF8String]);
    }
}

@end
