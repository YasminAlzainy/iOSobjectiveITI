//
//  ViewController.m
//  Colleagues
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    counter =  0 ;
    nameArray = [NSMutableArray new];
    [nameArray addObject:@"Yasmin"];
    [nameArray addObject:@"Sara"];
    [nameArray addObject:@"Alaa"];
    [nameArray addObject:@"Ayman"];
    [nameArray addObject:@"Amira"];
    [nameArray addObject:@"Ahmed"];
    _nameLabel.text = nameArray[counter];
}


- (IBAction)prevBtn:(UIButton *)sender {
    counter -- ;
    if (counter == -1)
        counter = [nameArray count] -1 ;
  
    _nameLabel.text = nameArray[counter];
}

- (IBAction)NextBtn:(UIButton *)sender {
    counter ++ ;
    if (counter == [nameArray count])
        counter = 0;
    
    _nameLabel.text = nameArray[counter];
}
@end
