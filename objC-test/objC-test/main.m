//
//  main.m
//  objC-test
//
//  Created by Light Clarke on 12/2/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *word1 = @"Bob";
        NSString *word2 = @"Bob";
        
        if ([word1 isEqualToString:word2 ]) {
            NSLog(@"%@ is equal to %@", word1, word2);
        }
        else {
            NSLog(@"%@ is not equal to %@", word1, word2);
        }
    return 0;
    }
    
}
