//
//  BIDFirstViewController.h
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDFirstViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *myFeet;
@property (strong, nonatomic) IBOutlet UITextField *myInches;

-(IBAction)convert:(id)sender;
-(IBAction)viewTapped:(id)sender;
-(void)convertFeetToInches:(id)sender;
-(void)convertInchesToFeet:(id)sender;

@end
