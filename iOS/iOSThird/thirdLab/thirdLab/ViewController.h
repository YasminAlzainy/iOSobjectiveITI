//
//  ViewController.h
//  thirdLab
//
//  Created by JETS Mobile Lab - 8 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
- (IBAction)alertClicked:(UIBarButtonItem *)sender;
- (IBAction)imageClicked:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

