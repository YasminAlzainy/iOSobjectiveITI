//
//  ViewController.h
//  Validation
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

- (IBAction)btnIsNumber:(id)sender;
- (IBAction)btnIsText:(id)sender;

@end

