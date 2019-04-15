//
//  ViewController.h
//  Colleagues
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray * nameArray ;
    int counter;
}

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
- (IBAction)prevBtn:(UIButton *)sender;
- (IBAction)NextBtn:(UIButton *)sender;


@end

