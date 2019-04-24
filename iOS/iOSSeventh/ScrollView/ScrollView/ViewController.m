//
//  ViewController.m
//  ScrollView
//
//  Created by JETS Mobile Lab - 8 on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScroll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_myScroll setScrollEnabled:YES];
    [_myScroll setContentSize:CGSizeMake(500, 1000)];
}


@end
