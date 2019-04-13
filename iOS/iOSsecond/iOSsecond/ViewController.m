//
//  ViewController.m
//  iOSsecond
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)goSecond:(id)sender { //UIButton
    //SecondViewController * second = [SecondViewController new];
    //[self.navigationController pushViewController:second animated:(NO)]; //wrong
    
    SecondViewController * second = [self.storyboard instantiateViewControllerWithIdentifier: @"secondID"];
    NSString *str = @"Hello Jets";
    second.str = str;
    second.firstView = self;
    [self.navigationController pushViewController:second animated:(NO)];
}

-(void)clearText{
    _myText.text = @"";
}
@end
