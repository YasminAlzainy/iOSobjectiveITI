//
//  Colleague.h
//  secondTableView
//
//  Created by JETS Mobile Lab - 8 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property NSString * name;
@property NSString * adress;
@property NSString * email;
@property int phone;
@property int age;

- (id) initName : (NSString *) name andAdress : (NSString *) address andEmail : (NSString *) email
       andPhone : (int) phone andAge : (int) age;
@end

NS_ASSUME_NONNULL_END
