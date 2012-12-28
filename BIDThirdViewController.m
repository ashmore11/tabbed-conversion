//
//  BIDThirdViewController.m
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDThirdViewController.h"

@implementation BIDThirdViewController

@synthesize myKilosSlider;
@synthesize myPoundsSlider;
@synthesize myLabel;
@synthesize myCLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Third", @"Third");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];

    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    myPoundsSlider.value=00.00;
    myKilosSlider.value=00.00;
    myCLabel.text=@"0.00Kilos";
    myLabel.text=@"0.00Pounds";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)sliderChanged:(id)sender
{
    UISlider *sL =sender;
    if (sL.tag ==1000){
        myLabel.text = [NSString stringWithFormat:@"%2.2fKilos",myKilosSlider.value];
        [self convertFtoC:sender];
        myCLabel.text = [NSString stringWithFormat:@"%2.2fPounds",myPoundsSlider.value];
    }
    else 
    {
        myCLabel.text = [NSString stringWithFormat:@"%2.2fPounds",myPoundsSlider.value];
        [self convertCtoF:sender];
        myLabel.text = [NSString stringWithFormat:@"%2.2fKilos",myKilosSlider.value];
    }
}

-(void)convertFtoC:(id)sender
{
    UISlider *sL =sender;
    
    double Kilos = sL.value;
    double Pounds = (Kilos)*(2.2);
    [myPoundsSlider setValue :Pounds animated:YES];
}

-(void)convertCtoF:(id)sender
{
    UISlider *sL =sender;
    
    
    //NSLog(@"slider %3.2f",currentValue);
    double Pounds = sL.value;
    double Kilos =(Pounds)/(22);
    [myKilosSlider setValue :Kilos animated:YES];
}


@end
