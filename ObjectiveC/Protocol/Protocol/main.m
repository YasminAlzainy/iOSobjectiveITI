//
//  main.m
//  Protocol
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Rectangle.h"
#import "Traiangle.h"

int main(int argc, const char * argv[]) {
    Rectangle * rec = [ Rectangle new];
    printf("%lf \n" ,[rec calcArea:5 :10]);
    [rec printShapeName];
    
    Traiangle * traingle = [Traiangle new];
    printf("%lf \n" ,[traingle calcArea:5 :10]);
    [traingle printShapeName];
    
    return NSApplicationMain(argc, argv);
}
