//
//  BNRPerson.h
//  BMITime
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    //BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set its instance variables
- (float)getHeightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)getWeightInKilos;
- (void)setWeightInKilos:(int)w;

//BNRPerson has a method that calculates and returns the Body Mass Index
- (float)getBodyMassIndex;

@end
