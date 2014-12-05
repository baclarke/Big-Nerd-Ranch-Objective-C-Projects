//
//  main.m
//  chpt15-challenge2
//
//  Created by Light Clarke on 12/2/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //The objective is to redo the readline() challenge from chapter 8 using NSLog instead of printf
        //and using NSString instead of const char *  (which holds a string).
        
        
        //Asks the question who is cool?
        NSLog(@"who is cool? ");
        
        //creates a new nsstring object using the class method of stringWith... and the return from the readline function
        //as an argument
        //The stringWithUTF... class method converts the C string that is returned to a NSString object
        NSString *objName = [NSString stringWithUTF8String:readline(NULL)];
        
        //print the user input to the command line
        NSLog(@"%@ is cool!", objName);
    }
    return 0;
}
