//
//  main.m
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/15/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        stock1.symbol = @"XYZ";
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.5];
        [stock1 setNumberOfShares:40];
        
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        stock2.symbol = @"ABC";
        [stock2 setPurchaseSharePrice:12.13];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:80];
        
        BNRForeignStockHolding *stock3 = [[BNRForeignStockHolding alloc] init];
        stock3.symbol = @"LMN";
        [stock3 setConversionRate:0.16];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:80];
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        [portfolio addHolding:stock1];
        [portfolio addHolding:stock2];
        [portfolio addHolding:stock3];
        NSLog(@"%@", portfolio);

    }
    return 0;
}
