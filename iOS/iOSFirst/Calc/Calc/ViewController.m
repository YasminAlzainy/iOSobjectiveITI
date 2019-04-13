//
//  ViewController.m
//  Calc
//
//  Created by JETS Mobile Lab - 8 on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    double result;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnAdd:(id)sender {
    result =  _TFFirst.text.doubleValue + _TFSecond.text.doubleValue;
    _labelShow.text = [[NSString alloc] initWithFormat:@"%lf",result];
}

- (IBAction)btnSub:(id)sender {
    result =  _TFFirst.text.doubleValue - _TFSecond.text.doubleValue;
    _labelShow.text = [[NSString alloc] initWithFormat:@"%lf",result];
}

- (IBAction)btnDevide:(id)sender {
    if (_TFSecond.text.intValue != 0) {
        result =  _TFFirst.text.doubleValue / _TFSecond.text.doubleValue;
        _labelShow.text = [[NSString alloc] initWithFormat:@"%lf",result];
    }
    else
        _labelShow.text = @"ERORR";

}

- (IBAction)btnMult:(id)sender {
    result =  _TFFirst.text.doubleValue * _TFSecond.text.doubleValue;
    _labelShow.text = [[NSString alloc] initWithFormat:@"%lf",result];
}
@end
