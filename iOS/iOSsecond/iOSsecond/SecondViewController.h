//
//  SecondViewController.h
//  iOSsecond
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyProrocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property NSString * str ;
@property id<MyProrocol> firstView;
@end

NS_ASSUME_NONNULL_END
