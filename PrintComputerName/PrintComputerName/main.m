//
//  main.m
//  PrintComputerName
//
//  Created by Light Clarke on 12/1/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSHost *myComputer = [NSHost currentHost];
        
        NSString *myComputerName = [myComputer localizedName];
        
        NSLog(@"My computer is named %@", myComputerName);
    }
    return 0;
}
