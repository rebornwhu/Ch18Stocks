//
//  BNRStockHolding.h
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) NSString *symbol;
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
