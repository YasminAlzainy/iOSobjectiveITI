//
//  main.m
//  CalcMac
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Calc.h"
#import "Calc+categoryTest.h"

int main(int argc, const char * argv[]) {
    int x = 2;
    double firstNum , secondNum;
    Calc *calc = [Calc new];

    while (x!=1)
    {
        printf("FirstNum= \n");
        scanf("%lf" , &firstNum);
        printf("SecondNum= \n");
        scanf("%lf " , &secondNum);
        printf("1)add 2)sub 3)devide 4)mult 5)pow \n");
        scanf("%d " , &x);
        
        if(x ==1)
        {
            printf("%lf \n" , [calc Add:firstNum :secondNum]);
        }
        else if( x==2)
        {
            printf("%lf \n" , [calc Sub:firstNum :secondNum]);

        }
        else if (x ==3)
        {
            printf("%lf \n" , [calc Devide:firstNum :secondNum]);

        }
        else if (x==4)
        {
            printf("%lf \n" , [calc Mult:firstNum :secondNum]);

        }
        else if (x ==5)
            printf("%lf \n" , [calc square:firstNum :secondNum]);
        
        printf("please enter: \n 1)Exit \n 2)Next \n");
        scanf("%d" , &x);
    }
    return NSApplicationMain(argc, argv);
}
