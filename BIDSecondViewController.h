//
//  BIDSecondViewController.h
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MilesDelegate.h"

@interface BIDSecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *myConvertButton;
@property (strong, nonatomic) IBOutlet UILabel *myKilometersLabel;
@property (strong, nonatomic) IBOutlet UITextField *myMilesField;
@property (strong, nonatomic) MilesDelegate *myMilesDelegate;


-(IBAction)convert:(UIButton *)sender;


@end
