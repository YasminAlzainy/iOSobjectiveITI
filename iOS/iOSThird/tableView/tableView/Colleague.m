//
//  Colleague.m
//  tableView
//
//  Created by JETS Mobile Lab - 8 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague
- (id)initName:(NSString *)name andAdress:(NSString *)address andEmail:(NSString *)email andPhone:(int)phone andAge:(int)age
{
    self = [super init];
    if(self != nil)
    {
        self.name = name;
        self.adress = address;
        self.email = email;
        self.phone = phone;
        self.age = age;
    }
    
    return self;
}
@end
