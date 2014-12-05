//
//  BNRStockHolding.m
//  chpt18-challenge-Stocks
//
//  Created by Light Clarke on 12/5/14.
//  Copyright (c) 2014 Bid Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)getPurchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (float)getCurrentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c
{
    _currentSharePrice = c;
}

- (int)getNumberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)s
{
    _numberOfShares = s;
}

- (float)getCostInDollars;
{
    return ([self getPurchaseSharePrice] * [self getNumberOfShares]);
}

- (float)getValueInDollars
{
    return ([self getCurrentSharePrice] * [self getNumberOfShares]);
}
@end
