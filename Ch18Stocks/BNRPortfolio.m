//
//  BNRPortfolio.m
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/21/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

@end


@implementation BNRPortfolio

- (void)setHoldings:(NSArray *)h
{
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
}

- (void)addHolding:(BNRStockHolding *)h
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (void)removeHolding:(NSInteger)i
{
    if (!_holdings
        || [_holdings count] - 1 < i) {
        return;
    }
    
    [_holdings removeObjectAtIndex:i];
}


- (float)totalValue
{
    float sum = 0;
    for (BNRStockHolding *h in _holdings) {
        sum += [h valueInDollars];
    }
    return sum;
}


- (NSString *)description
{
    NSMutableString *mtbString = [[NSMutableString alloc] init];
    for (BNRStockHolding *h in _holdings) {
        [mtbString appendFormat:@"%@\n", h];
    }
    [mtbString appendFormat:@"Total value $%.2f", self.totalValue];

    return [mtbString copy];
}

@end
