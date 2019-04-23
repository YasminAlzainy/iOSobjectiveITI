//
//  InfoViewController.m
//  secondTableView
//
//  Created by JETS Mobile Lab - 8 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _labelAge.text = [[NSString alloc] initWithFormat:@"%d" ,_age ];
    _labelEmail.text = _email;
    _labelPhone.text =[[NSString alloc] initWithFormat:@"%d" ,_phone ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
