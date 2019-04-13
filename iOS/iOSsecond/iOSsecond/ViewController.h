//
//  ViewController.h
//  iOSsecond
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyProrocol.h"

@interface ViewController : UIViewController <MyProrocol>
@property (weak, nonatomic) IBOutlet UILabel *myText;

- (IBAction)goSecond:(id)sender;

@end

