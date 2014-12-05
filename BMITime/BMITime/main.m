//
//  main.m
//  BMITime
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create an instance of BNRPerson
        BNRPerson *mikey = [[BNRPerson alloc]init];
        
        //Give the instance variables intersting values using setters
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        //log the instance variables using getters
        float height = [mikey getHeightInMeters];
        int weight = [mikey getWeightInKilos];
        NSLog(@"mikey is %.2f meters tall and weights %d kilograms", height, weight);
        
        //log some values using custom methods
        float bmi = [mikey getBodyMassIndex];
        NSLog(@"mikey has a bmi of %f", bmi);
        
    }
    return 0;
}
