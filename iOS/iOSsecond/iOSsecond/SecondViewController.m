//
//  SecondViewController.m
//  iOSsecond
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem * myButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:myButton];
    self.title = @"Second :)";
    _nameLabel.text = _str;
}

- (void) done {
    printf("done here \n");
    [self.firstView clearText];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
