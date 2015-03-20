//
//  BNRStockHolding.h
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)p;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;
- (float)valueInDollars;

@end
