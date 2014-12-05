//
//  main.c
//  chpt11-challenge
//
//  Created by Light Clarke on 11/28/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    //Time in all programming languages is calculated from 1970 to the present. This gives us the time that has passed since 1970
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    //create a new tm struct to use to store the current time
    struct tm now;
    
    //the localtime_r function takes the time since 1970 and performs calculations on to get the current time, and stores the values in the tm now struct.
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    //tm struct to hold future date information
    struct tm futureDate;
    //calculate the future time by adding it to the secondsSince1970 and feeding it to the localtime_r function.
    long futureTimeInSec = secondsSince1970 + 4000000;
    localtime_r(&futureTimeInSec, &futureDate);
    
    //We now print the future date in our custom format of m-d-year, we add 1 to the month since janurary is 0 and 1900 to the year since they start counting from the yearh 1900
    printf("The date, 4 million secons from now will be %d-%d-%d\n", (futureDate.tm_mon + 1), futureDate.tm_mday, (futureDate.tm_year +1900));
    printf("%ld\n", futureTimeInSec);

    
    return 0;
}
