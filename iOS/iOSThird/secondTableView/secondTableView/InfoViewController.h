//
//  InfoViewController.h
//  secondTableView
//
//  Created by JETS Mobile Lab - 8 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UILabel *labelPhone;
@property (weak, nonatomic) IBOutlet UILabel *labelAge;

@property int age;

@property NSString * email;

@property int  phone;
@end

NS_ASSUME_NONNULL_END
