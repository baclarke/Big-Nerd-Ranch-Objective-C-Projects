//
//  main.m
//  chpt17-challenge1-Groceries
//
//  Created by Light Clarke on 12/3/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *groceryList = [[NSMutableArray alloc]init];
        
        NSString *item1 = @"Loaf of bread";
        NSString *item2 = @"container of milk";
        NSString *item3 = @"stick of butter";
        
        [groceryList addObject:item1];
        [groceryList addObject:item2];
        [groceryList addObject:item3];
        
        for (NSString *i in groceryList){
            NSLog(@"%@ is on your grocery list", i);
        }
        
        
    }
    return 0;
}
