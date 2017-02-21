//
//  TipModel.h
//  TipCalculator
//
//  Created by Pierre Binon on 2017-02-21.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>

//@protocol TipDelegate <NSObject>
//
//
//
//@end


@interface TipModel : NSObject

- (NSString *) calculateTip: (NSString *) cost tipPercent: (NSString *) tipPercent;

@end
