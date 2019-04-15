//
//  ViewController.m
//  thirdLab
//
//  Created by JETS Mobile Lab - 8 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIAlertView * alert1;
    UIAlertView * alert2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)alertClicked:(UIBarButtonItem *)sender {
    printf("Alert");
    alert1 = [[UIAlertView alloc]initWithTitle:@"MY Alert"
                                       message:@"Hello there!"
                                      delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles: @"ok" , @"cancel", nil];
    alert1.alertViewStyle =UIAlertViewStyleLoginAndPasswordInput;
    [alert1 show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if (alertView == alert1)
    {
        switch (buttonIndex) {
            case 0:
            {
                printf("Ok \n");
                NSString *userName = [alertView textFieldAtIndex:0].text;
                NSString *pass = [alertView textFieldAtIndex:1].text;
                printf("User: %s \npass: %s \n",[userName UTF8String] , [pass UTF8String]);
                break;
            }
            case 1:
                printf("Cancle");
                break;
        }
    }
    switch (buttonIndex) {
            if (alertView == alert1)
            {
                {
                case 0:
                    {
                        printf("Ok2 \n");
                        NSString *userName = [alertView textFieldAtIndex:0].text;
                        NSString *pass = [alertView textFieldAtIndex:1].text;
                        printf("User: %s \npass: %s \n",[userName UTF8String] , [pass UTF8String]);
                        break;
                    }
                case 1:
                    printf("Cancle2");
                    break;
                }
            }
    }
}

- (IBAction)imageClicked:(UIBarButtonItem *)sender {
    printf("Image");
    alert2 = [[UIAlertView alloc]initWithTitle:@"Image"
                                       message:@"Hello there!"
                                      delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles: @"ok" , @"cancel", nil];
    alert2.alertViewStyle =UIAlertViewStyleLoginAndPasswordInput;
    [alert2 show];
    
    UIImage * image = [UIImage imageNamed:@"images.png"];
    [_img setImage:image];
}
@end
