//
//  BNRForeignStockHolding.h
//  Ch18Stocks
//
//  Created by Xiao Lu on 3/20/15.
//  Copyright (c) 2015 Xiao Lu. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate; // to dollar, e.g. RMB is 0.16

@end
