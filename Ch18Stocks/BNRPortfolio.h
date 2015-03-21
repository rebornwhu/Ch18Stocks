//
//  BNRPortfolio.h
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/21/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio : NSObject

- (void)addHolding:(BNRStockHolding *)h;
- (void)removeHolding:(NSInteger)i;
- (float)totalValue;


@end
