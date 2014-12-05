//
//  main.m
//  chpt18-challenge-Stocks
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //int to hold number to use for the stock names when determining the stock's name in NSLog
        //start at 1
        //a better solution would be to have a "stockName" instance variable as a part of the object's instance variables
        //but that's too much typing for now!
        int stockNumber = 1;
        
        //create threee new BNRStockHolding Objects
        BNRStockHolding *stock1 = [[BNRStockHolding alloc]init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc]init];
        BNRStockHolding *stock3 = [[BNRStockHolding alloc]init];
        
        //set their values
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        
        //assign the stocks to an array called stocks
        NSArray *stocks = @[stock1, stock2, stock3];
        
        //iterate through the array to print the value of each instance variable for each stock object
        for (BNRStockHolding *stock in stocks){
            NSLog(@"stock%d's purchase price is %.2f", stockNumber, [stock getPurchaseSharePrice]);
            NSLog(@"stock%d's current price is %.2f", stockNumber, [stock getCurrentSharePrice]);
            NSLog(@"stock%d's number of shares is %d", stockNumber, [stock getNumberOfShares]);
            NSLog(@"stock%d's cost in dollars is is %.2f", stockNumber, [stock getCostInDollars]);
            NSLog(@"stock%d's value in dollars is is %.2f\n\n", stockNumber, [stock getValueInDollars]);
            //increment the stock number by 1 at the end of each loop, so that each stock has the correct number in it's name.
            stockNumber++;
        }
    }
    return 0;
}
