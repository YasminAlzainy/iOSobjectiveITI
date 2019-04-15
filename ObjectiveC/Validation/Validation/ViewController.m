//
//  ViewController.m
//  Validation
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSCharacterSet * nsChar;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    nsChar =  [[NSCharacterSet decimalDigitCharacterSet] invertedSet] ;

}


- (IBAction)btnIsNumber:(id)sender {
    if([_text.text rangeOfCharacterFromSet:nsChar].location == NSNotFound)
    {
        _showLabel.text = @"Is numebr :)" ;
    }
    else
        _showLabel.text = @"Isn't number :(";
}

- (IBAction)btnIsText:(id)sender {
    if([_text.text rangeOfCharacterFromSet:nsChar].location != NSNotFound)
    {
        _showLabel.text = @"Is Text :)" ;
    }
    else
        _showLabel.text = @"Isn't Text :(";
}
@end
