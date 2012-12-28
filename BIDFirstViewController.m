//
//  BIDFirstViewController.m
//  Tabbed Conversion
//
//  Created by Scott Ashmore on 12-01-19.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BIDFirstViewController.h"

@implementation BIDFirstViewController

@synthesize myFeet;
@synthesize myInches;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)convert:(id)sender
{
    UITextField *myField =sender;
    if (myField.tag ==1000) {
        [self convertFeetToInches:sender];
    }
    else {
        [self convertInchesToFeet:sender];
    }
}

-(void)convertFeetToInches:(id)sender
{
    if ([myFeet.text length]==0) {
        myInches.text = @"";
        return;
    }
    double Feet = [myFeet.text doubleValue];
    double Inches = (Feet)*(12);
    myInches.text=[NSString stringWithFormat:@"%3.2f",Inches];
}
-(void)convertInchesToFeet:(id)sender
{
    if ([myInches.text length]==0) {
        myFeet.text = @"";
        return;
    }
    double Inches = [myInches.text doubleValue];
    double Feet = (Inches/12);
    myFeet.text=[NSString stringWithFormat:@"%3.2f",Feet];
}

-(IBAction)viewTapped:(id)sender
{
    for (UIView *myView in [self.view subviews])
    {
        if ([myView isKindOfClass:[UITextField class]])
        {
            [(UITextField *)myView resignFirstResponder];
        }
    }
}


@end
