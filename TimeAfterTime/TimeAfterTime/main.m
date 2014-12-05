//
//  main.m
//  TimeAfterTime
//
//  Created by Light Clarke on 12/1/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //You can created and initialize new objects by using certain methods for a particular class
        //in this case we use the "date" class method to create a new NSDate object/instance in memory
        //NSDate *now = [NSDate date];
        
        //You can also initialize new objects by nesting alloc (creates/allocates a new object in memory) and
        //init (initializes the new object so that it can recieve messages,
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *futureDate = [now dateByAddingTimeInterval:-100000];
        NSLog(@"In 100,000 seconds it will be %@.", futureDate);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My Calendar is %@", [cal calendarIdentifier]);
    
        unsigned long day = [cal ordinalityOfUnit:(NSDayCalendarUnit)
                                           inUnit:(NSMonthCalendarUnit)
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);

        ///////
        //end of chapter 14 project
        /////////
        
        //create an NSDateComponents object and use it's methods to set it's variables to my birth date
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1983];
        [comps setMonth:7];
        [comps setDay:4];
        [comps setHour: 2];
        [comps setMinute:0];
        [comps setSecond:0];
        
        //create and NSCalendar object of type Gregorian
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        //crate a new NSDate object with my date of birth by
        //using the instance method called "dateFromComponents" from the "g" NSCalendar object, which is passed the "comps" oject as an argument
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        //create an NSDate object holding the current date
        NSDate *currentDate = [[NSDate alloc] init];
        
        //use the "timeIntervalSinceDate" method of "currentDate" and pass it the "dateOfBirth" object to calculate the amount of seconds since my birth!
        //It does this by calculating the difference between the two date objects;
        //I added the extra division to convert the seconds to years to check my work
        double secondsSinceBrith = ([currentDate timeIntervalSinceDate:dateOfBirth]) /60 /60 /24 /365;
        
        NSLog(@" THe number of seconds since my birth is %f", secondsSinceBrith);
        
    }
    return 0;
}
