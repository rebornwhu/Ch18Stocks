//
//  BNRForeignStockHolding.m
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/20/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    return [super costInDollars] * _conversionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * _conversionRate;
}


@end
