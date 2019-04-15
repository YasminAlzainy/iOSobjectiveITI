//
//  MyProtocol.h
//  Protocol
//
//  Created by JETS Mobile Lab - 8 on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyProtocol <NSObject>

@required

-(double) calcArea: (double)firstEdge : (double)secondEdge;

@optional
-(void) printShapeName;

@end

NS_ASSUME_NONNULL_END
