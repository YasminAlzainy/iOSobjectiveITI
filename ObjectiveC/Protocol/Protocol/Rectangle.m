//
//  Rectangle.m
//  Protocol
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
-(double)calcArea:(double)firstEdge :(double)secondEdge{
    return firstEdge * secondEdge;
}

-(void)printShapeName{
    printf("Rectangle \n");
}
@end
