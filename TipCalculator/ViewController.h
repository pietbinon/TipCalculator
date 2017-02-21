//
//  ViewController.h
//  TipCalculator
//
//  Created by Pierre Binon on 2017-02-21.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TipModel.h"



@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
@property (weak, nonatomic) IBOutlet UIButton *calculateTip;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipAmountLabel;
@property NSInteger cost;
@property NSInteger tipPercent;
@property TipModel *tipModel;

@end
