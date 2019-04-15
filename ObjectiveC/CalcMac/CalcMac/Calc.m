//
//  Calc.m
//  CalcMac
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "Calc.h"

@implementation Calc

- (double)Add:(double) firstNum : (double) secondNum{
    return firstNum + secondNum;
    
}
- (double)Sub: (double)firstNum : (double) secondNum{
    return  firstNum - secondNum;
    
}
- (double)Devide: (double) firstNum : (double) secondNum{
    if(secondNum != 0)
        return firstNum / secondNum;
    return 0;
    
}
- (double)Mult: (double)firstNum : (double) secondNum{
    return firstNum * secondNum;
}

@end
