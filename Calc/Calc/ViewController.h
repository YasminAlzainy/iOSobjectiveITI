//
//  ViewController.h
//  Calc
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *TFFirst;
@property (weak, nonatomic) IBOutlet UITextField *TFSecond;
@property (weak, nonatomic) IBOutlet UILabel *labelShow;

- (IBAction)btnAdd:(id)sender;
- (IBAction)btnSub:(id)sender;
- (IBAction)btnDevide:(id)sender;
- (IBAction)btnMult:(id)sender;

@end

