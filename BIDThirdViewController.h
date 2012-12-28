//
//  BIDThirdViewController.h
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDThirdViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISlider *myKilosSlider;
@property (strong, nonatomic) IBOutlet UISlider *myPoundsSlider;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UILabel *myCLabel;



-(void)convertFtoC:(id)sender;
-(void)convertCtoF:(id)sender;


-(IBAction)sliderChanged:(id)sender;


@end
