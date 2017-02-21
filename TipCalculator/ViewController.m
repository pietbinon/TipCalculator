//
//  ViewController.m
//  TipCalculator
//
//  Created by Pierre Binon on 2017-02-21.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()<UITextFieldDelegate>

@end




@implementation ViewController

- (void) viewDidLoad {
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
    self.billAmountTextField.delegate = self;
    self.tipAmountLabel.delegate = self;
    [self setupTextField: self.billAmountTextField];
    [self setupTextField: self.tipAmountLabel];
    
    self.tipModel = [TipModel new];
    
    self.cost = [self.billAmountTextField.text integerValue];
    self.tipPercent = [self.tipAmountLabel.text integerValue];
    // NSNUmberformater
    //  self.tipAmountLabel.text = [self.tipModel calculateTip:self.cost tipPercent:self.tipPercent];
}


- (void) textFieldDidBeginEditing: (UITextField *) textField {
    [textField becomeFirstResponder];
}


- (void) textFieldDidEndEditing: (UITextField *) textField {
    [textField resignFirstResponder];
}


- (IBAction)calculateTip: (id)sender {
    self.tipAmount.text = [self.tipModel calculateTip: self.billAmountTextField.text tipPercent: self.tipAmountLabel.text];
    [self.tipAmountLabel resignFirstResponder];
    [self.billAmountTextField resignFirstResponder];
}


- (void) setupTextField: (UITextField *) textField {
    [textField setKeyboardType: UIKeyboardTypeDecimalPad];
}








@end
