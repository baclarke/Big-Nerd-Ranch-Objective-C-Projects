//
//  main.m
//  chpt15-challenge1
//
//  Created by Light Clarke on 12/2/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Challenge 1  from chapter 16
        //The rangeOfString: method is case-sensitive. Return to the NSString class reference and find the
        //method that you would use if you needed to do a case-insensitive search.
        //Then find the NSString method that will return the actual portion of the string that was found.
        
        NSString *listOfNames = @"bob, sally, lue, brian";
        
        NSString *searchString = @"Brian";
        
        NSRange match = [listOfNames rangeOfString:searchString
                                           options:NSCaseInsensitiveSearch];
        
        if (match.location == NSNotFound){
            NSLog(@"your name is not listed");
        } else {
            NSLog(@"match found!\n\n The match that was found is \"%@\"",[listOfNames substringWithRange:match]);
        }
     
            
        
    }
    return 0;
}
