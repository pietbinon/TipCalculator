//
//  TipModel.m
//  TipCalculator
//
//  Created by Pierre Binon on 2017-02-21.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "TipModel.h"



@implementation TipModel

- (NSString *) calculateTip: (NSString *) cost tipPercent: (NSString *)tipPercent {
    
    float tipDecimal = [tipPercent floatValue] / 100;
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    [numberFormatter setNumberStyle: NSNumberFormatterCurrencyISOCodeStyle];    
    NSString *number = [numberFormatter stringFromNumber: [NSNumber numberWithFloat: [cost floatValue] * tipDecimal]];
    return [NSString stringWithFormat: @"%@", number];
}

@end
