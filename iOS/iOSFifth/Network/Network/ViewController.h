//
//  ViewController.h
//  Network
//
//  Created by JETS Mobile Lab - 8 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate , NSURLConnectionDataDelegate>
- (IBAction)syncBtn:(UIButton *)sender;
- (IBAction)asyncBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

