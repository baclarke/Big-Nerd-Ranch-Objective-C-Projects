//
//  main.m
//  Chpt17-DateList
//
//  Created by Light Clarke on 12/3/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 *60.0];
        
        //create an array containing all three
        //NSArray *dateList = @[now, tomorrow, yesterday];
        
        //print a couple of dates
        //NSLog(@"The first date is %@", dateList[0]);
        //NSLog(@"The third date is %@", dateList[2]);
        
        //How many dates are in the array?
        //NSLog(@"There are %lu dates", [dateList count]);
        
        //iterate(perform/repeate the same function on each item in the array) over the array
        //NSUInteger dateCount = [dateList count];
        //for (int i = 0; i<dateCount; i++){
        //    NSDate *d = dateList[i];
        //    NSLog(@"Here is a date: %@", d);
        //}
        
        //another way to iterate using shorthand
        //for (NSDate *d in dateList){
        //    NSLog(@"Here is a date: %@", d);
        //}
        
        //Create an empty mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Add yesterday at the beginning of the list
        [dateList insertObject:yesterday
                       atIndex:0];
        
        //iterate over the array
        for (NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
        
        //remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
        
    }
    return 0;
}
