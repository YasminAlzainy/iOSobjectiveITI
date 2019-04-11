//
//  ViewController.m
//  HelloApp
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myText.text = @"Hello Jasmine :)";
}


- (IBAction)myButton:(id)sender {
    _myText.text = @"Changed Text";
}

- (IBAction)btnButton:(id)sender {
    _labelWrite.text = _texFieldWrite.text;
  
}
@end
