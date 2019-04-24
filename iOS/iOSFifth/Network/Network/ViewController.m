//
//  ViewController.m
//  Network
//
//  Created by JETS Mobile Lab - 8 on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableData * dataReceive ;
    NSURL * url;
    NSURLRequest * req;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSUrl * url = [[NSURL  alloc] initWithString:@"www.google.com"];
//    NSURLRequest * req = [[NSURLRequest alloc] initWithURL:url];
//    NSURLConnection * conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    
}


- (IBAction)syncBtn:(UIButton *)sender {
   
    url = [[NSURL  alloc] initWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString * str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    req = [[NSURLRequest alloc] initWithURL:url];

    //[_webView loadHTMLString:str baseURL:url];
    [_webView loadRequest:req];
    //[_textView setText:str];
}

- (IBAction)asyncBtn:(UIButton *)sender {
    NSURL * url = [[NSURL  alloc] initWithString:@"https://maktoob.yahoo.com/?p=us"];
     req = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection * conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    printf("didReceiveData \n");
    NSString * str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    [dataReceive appendData:data];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    printf("didReceiveResponse \n");
    dataReceive = [ NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("didFailWithError \n");
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    // normall
    //NSString * str = [[NSString alloc] initWithData:dataReceive encoding:NSUTF8StringEncoding];
    
    // web service
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:dataReceive options:NSJSONReadingAllowFragments error:nil];
    NSString * str = [dict objectForKey:@"status"];
   
    //[_textView setText:dataReceive];
    //[_webView loadHTMLString:str baseURL:url];
    
    [_webView loadRequest:req];

}
@end
