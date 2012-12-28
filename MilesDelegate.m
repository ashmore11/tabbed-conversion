//
//  MilesDelegate.m
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MilesDelegate.h"

@implementation MilesDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (range.length >0 && [string length] ==0) {
        return YES;
    }
    
    NSCharacterSet *characterSet;
    NSString *numberSet=@"0123456789";
    NSString *numberPeriodSet=@"0123456789.";
    NSRange seperatorRange=[textField.text rangeOfString:@"."];
    if (seperatorRange.location == NSNotFound) {
        characterSet=[[NSCharacterSet characterSetWithCharactersInString:numberPeriodSet]invertedSet];
        
    }
    else {    
        characterSet=[[NSCharacterSet characterSetWithCharactersInString:numberSet]invertedSet];
    }
    
    return ([[string stringByTrimmingCharactersInSet:characterSet] length] > 0);
    
}

-(void) textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"text field ended editing");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
