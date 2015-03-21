//
//  BNRStockHolding.m
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}

- (float)valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"<Stock %@: $%.2f in cost, $%.2f in value>",
            self.symbol, self.costInDollars, self.valueInDollars];
}

@end
