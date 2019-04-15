//
//  Traiangle.m
//  Protocol
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Traiangle.h"

@implementation Traiangle
-(double)calcArea:(double)firstEdge :(double)secondEdge{
    return firstEdge * secondEdge * 0.5;
}

-(void)printShapeName{
    printf("Traingle \n");
}
@end
