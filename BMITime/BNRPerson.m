//
//  BNRPerson.m
//  BMITime
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)getHeightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)getWeightInKilos
{
    return _weightInKilos;
}

- (void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

- (float)getBodyMassIndex
{
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self getHeightInMeters];
    return [self getWeightInKilos] / (h*h);
}

@end
