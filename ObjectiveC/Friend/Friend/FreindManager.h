//
//  FreindManager.h
//  Friend
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Friend.h"

@interface FreindManager : NSObject
{
}
@property NSMutableArray * mutableArr ;

-(void) initArr;
-(void) addFriend : (Friend *) friend;
-(void) deleteFreind: (Friend *) friendId;
-(NSMutableArray *) getALLFriends;
-(void) printArr;
@end

