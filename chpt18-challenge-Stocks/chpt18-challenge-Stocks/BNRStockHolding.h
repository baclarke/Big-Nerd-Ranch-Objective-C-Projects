//
//  BNRStockHolding.h
//  chpt18-challenge-Stocks
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    //declaration of three instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

//declaration of accessor methods for variables

- (float)getPurchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)getCurrentSharePrice;
- (void)setCurrentSharePrice:(float)c;
- (int)getNumberOfShares;
- (void)setNumberOfShares:(int)s;

//declaration of additional methods

//This method calculates the cost in dollars
- (float)getCostInDollars;
//This Method calculates the actual value in dollars
- (float)getValueInDollars;

@end
