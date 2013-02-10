//
//  One.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "One.h"
#import "pocketSolverAppDelegate.h"
#import "fullSolutionViewController.h"

@implementation One

@synthesize  onea, oneb, onec, onebutton, text;
@synthesize contentView = _contentView; 
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 


double oneaValue = 0.0;
double onebValue = 0.0;
double onecValue = 0.0;
double oneanswer = 0.0;
NSString * string1;
NSString * string2;
NSString * string3;

NSString * oneEquation;
NSString * oneType = @"Linear Equation: 1 Variable";
NSString * oneSol;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"LE: 1 Variable";
    }
    return self;
}

- (int)getBannerHeight:(UIDeviceOrientation)orientation {
    if (UIInterfaceOrientationIsLandscape(orientation)) {
        return 32;
    } else {
        return 50;
    }
}

- (int)getBannerHeight {
    return [self getBannerHeight:[UIDevice currentDevice].orientation];
}



-(IBAction) doneA:(id)sender;
{
	string1 =  [[sender text]retain];

	
	if([string1 rangeOfString:@"/"].location == NSNotFound)
	   {
	   
		   oneaValue = [[sender text] doubleValue];
	   }
	   else{
	
	NSArray *chunks = [string1 componentsSeparatedByString: @"/"];
	double num = [[chunks objectAtIndex:0]doubleValue];
	double den = [[chunks objectAtIndex:1]doubleValue];
	   
	

		   oneaValue = num/den;}
	[sender resignFirstResponder];}

-(IBAction) doneB:(id)sender;
{
	string2 = [[sender text]retain];
	
	if([string2 rangeOfString:@"/"].location == NSNotFound)
	{
		
		onebValue = [[sender text] doubleValue];
	}
	else{
		
		NSArray *chunks = [string2 componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		
		
		
		onebValue = num/den;}
	[sender resignFirstResponder];}

-(IBAction) doneC:(id)sender;
{
	string3 = [[sender text]retain];
	
	if([string3 rangeOfString:@"/"].location == NSNotFound)
	{
		
		onecValue = [[sender text] doubleValue];
	}
	else{
		
		NSArray *chunks = [string3 componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		
		
		
		onecValue = num/den;}
	[sender resignFirstResponder];}

-(IBAction) solve:(id)sender;
{
	NSArray *fields;
	
	if([string1 rangeOfString:@"/"].location != NSNotFound)
	{
	fields = [string1 componentsSeparatedByString:@"/"];
		NSString *line1= [NSString stringWithFormat:@"%@%@%@%@%@", string1, @"x + ", string2, @" = ", string3];
		oneEquation = [line1 retain];
		NSString *line2= [NSString stringWithFormat:@"%@%@%@%@%@", string1, @"x = ", string3, @" - ", string2];
		NSString *line3= [NSString stringWithFormat:@"%@%@%.2lf", string1, @"x = ",(onecValue-onebValue)];
		NSString *line4= [NSString stringWithFormat:@"%@%@%.2lf%@%@", [fields objectAtIndex:0], @"x = ",(onecValue-onebValue), @"*", [fields objectAtIndex:1] ];
		NSString *line5= [NSString stringWithFormat:@"%@%@%.2lf", [fields objectAtIndex:0], @"x = ",(onecValue-onebValue)*[[fields objectAtIndex:1]doubleValue] ];
		NSString *line6= [NSString stringWithFormat:@"%@%.2lf%@%@", @"x = ",(onecValue-onebValue)* [[fields objectAtIndex:1]doubleValue], @"/",  [fields objectAtIndex:0] ];
		NSString *line7= [NSString stringWithFormat:@"%@%.2lf",@"x = ",(onecValue-onebValue)* [[fields objectAtIndex:1]doubleValue]/  [[fields objectAtIndex:0]doubleValue]];
		
		NSArray  *linesArray = [NSArray arrayWithObjects:line1, line2, line3, line4, line5, line6,line7, nil];
		oneSol = [[linesArray componentsJoinedByString:@"\n"] retain];
		
	}
	
	else 
		{
			fields = [NSArray arrayWithObjects:string1, nil];
			NSString *line1= [NSString stringWithFormat:@"%@%@%@%@%@", string1, @"x + ", string2, @" = ", string3];
			oneEquation = [line1 retain];
			NSString *line2= [NSString stringWithFormat:@"%@%@%@%@%@", string1, @"x = ", string3, @" - ", string2];
			NSString *line3= [NSString stringWithFormat:@"%@%@%.2lf", string1, @"x = ",(onecValue-onebValue)];
			NSString *line4= [NSString stringWithFormat:@"%@%.2lf%@%@", @"x = ",(onecValue-onebValue), @"/",  [fields objectAtIndex:0] ];
			NSString *line5= [NSString stringWithFormat:@"%@%.2lf",@"x = ",(onecValue-onebValue)/[[fields objectAtIndex:0]doubleValue]];
			
			NSArray  *linesArray = [NSArray arrayWithObjects:line1, line2, line3, line4, line5, nil];
			oneSol = [[linesArray componentsJoinedByString:@"\n"] retain];
			

		}
	
	oneanswer = (onecValue-onebValue)/oneaValue;
	text.text = [NSString stringWithFormat: @"%.2lf", oneanswer];

}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

-(void)viewDidLoad
{
	[super viewDidLoad];
	[self createAdBannerView];
	UIBarButtonItem *viewButton = [[UIBarButtonItem alloc] initWithTitle:@"Steps"
																   style:UIBarButtonItemStyleBordered
																  target:self
																  action:@selector(viewSol)];
	self.navigationItem.rightBarButtonItem = viewButton;
	[viewButton release];
	
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	[self fixupAdView:[UIDevice currentDevice].orientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}

-(void) viewSol
{
	
	fullSolutionViewController *fsReference = [[fullSolutionViewController alloc] initWithNibName:@"fullSolutionViewController" bundle:nil];
	fsReference.SOL = oneSol;
	fsReference.TYP = oneType;
	fsReference.EQN = oneEquation;
	[self.navigationController pushViewController:fsReference animated:YES];
	[fsReference release];
}

#pragma mark ADBannerViewDelegate

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    if (!_adBannerViewIsVisible) {                
        _adBannerViewIsVisible = YES;
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (_adBannerViewIsVisible)
    {        
        _adBannerViewIsVisible = NO; 
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}



- (void)dealloc {
	[text release];
	[onea release];
	[oneb release];
	[onec release];
	[onebutton release];
    [super dealloc];
	self.contentView = nil;
	self.adBannerView = nil;
}

@end
