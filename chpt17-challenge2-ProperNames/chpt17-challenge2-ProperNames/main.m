//
//  main.m
//  chpt17-challenge2-ProperNames
//
//  Created by Light Clarke on 12/3/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

//challenge 2
//Compare the two word files and find all the proper names that show up as lower case names in the "words" file

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Integer to record the number of matches when comparing the two text
        //files later on.
        NSInteger numOfMatches = 0;
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        //reading the propernames file to an NSString Object
        NSString *nameStringProperNames =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        
        //reading the words file to an NSString object
        NSString *nameStringCommonWords =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        
        
        // Break them both into an array of strings
        
        //ProperNames NSString broken down into an array of sub strings, using the new line character as a delimeter
        NSArray *properNames = [nameStringProperNames componentsSeparatedByString:@"\n"];
        
        //Common words NSString broken down into array of sub strings, using the new line character as a delimeter
        NSArray *commonNames = [nameStringCommonWords componentsSeparatedByString:@"\n"];
        
        // Iterate/Go through the proper names array one index at a time and compare it to the common names
        //one index at a time to see if you find a lower case match
        
        //assign each string in the properNames array to the pn variable
        for (NSString *pn in properNames) {
            
            //make it lowercase
            NSString *lowerpn = [pn lowercaseString];
            
            //Assign each string in the commonNames array to the cn variable
            for (NSString *cn in commonNames){
                
                //check to see if the lower case propername is equal to the current common name string
                if ([cn isEqualTo:lowerpn]){
                    //if so, print the current common name
                    NSLog(@"%@", cn);
                    
                    //increment the numOfMatches variable to record the total number of matches
                    numOfMatches +=1;
                    
                    //break out of this loop so that it does not have to check against every other word for a match, since a match
                    //was already found
                    break;
                    
                }

            }
            
        }
        //Print the total number of matches
        NSLog(@"The total number of matches is %lu.", numOfMatches);
        
        }
        

    return 0;
}
