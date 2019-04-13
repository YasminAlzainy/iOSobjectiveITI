//
//  ViewController.h
//  HelloApp
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myText;
- (IBAction)myButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *texFieldWrite;
- (IBAction)btnButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelWrite;

@end

