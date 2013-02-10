//
//  Two.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Two.h"
#import "fullSolutionViewController.h"


@implementation Two

@synthesize  a, b, c, d, e, f, button, textx, texty;
@synthesize contentView = _contentView; 
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 

double aValue = 0.0;
double bValue = 0.0;
double cValue = 0.0;
double dValue = 0.0;
double eValue = 0.0;
double fValue = 0.0;
double answer = 0.0;
double temp = 0.0;
double tempa = 0.0;
double tempc = 0.0;



NSString * twoEquation;
NSString * twoType = @"Linear Equation: 2 Variables";
NSString * twoSol;

NSString * temps;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"LE: 2 Variables";
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
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		aValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		aValue = num/den;
	}
	[sender resignFirstResponder];
}


-(IBAction) doneB:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		bValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		bValue = num/den;
	}
	[sender resignFirstResponder];
	
}

-(IBAction) doneC:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		cValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		cValue = num/den;
	}
	[sender resignFirstResponder];
}
	
	
	-(IBAction) doneD:(id)sender;
	{
		temps = [[sender text]retain];
		
		if([temps rangeOfString:@"/"].location == NSNotFound)
		{
			dValue = [[sender text ]doubleValue];
		}
		else{
			
			NSArray *chunks = [temps componentsSeparatedByString: @"/"];
			double num = [[chunks objectAtIndex:0]doubleValue];
			double den = [[chunks objectAtIndex:1]doubleValue];
			dValue = num/den;
		}
		[sender resignFirstResponder];
	}
	
	-(IBAction) doneE:(id)sender;
	{
		temps = [[sender text]retain];
		
		if([temps rangeOfString:@"/"].location == NSNotFound)
		{
			eValue = [[sender text ]doubleValue];
		}
		else{
			
			NSArray *chunks = [temps componentsSeparatedByString: @"/"];
			double num = [[chunks objectAtIndex:0]doubleValue];
			double den = [[chunks objectAtIndex:1]doubleValue];
			eValue = num/den;
		}
		[sender resignFirstResponder];
		
	}
	
	-(IBAction) doneF:(id)sender;
	{
		temps = [[sender text]retain];
		
		if([temps rangeOfString:@"/"].location == NSNotFound)
		{
			fValue = [[sender text ]doubleValue];
		}
		else{
			
			NSArray *chunks = [temps componentsSeparatedByString: @"/"];
			double num = [[chunks objectAtIndex:0]doubleValue];
			double den = [[chunks objectAtIndex:1]doubleValue];
			fValue = num/den;
		}
		[sender resignFirstResponder];
}
	

-(IBAction) solve:(id)sender;
{

	NSString *twoLine1 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", aValue, @"x + ", bValue, @"y = ", cValue,@" \n", dValue, @"x + ", eValue, @"y = ", fValue, @"\n"];
	twoEquation = [twoLine1 retain];
	NSString *twoLine2 = @"Eliminate x value by equalizing its coefficients and subtracting second equation from first equation\n";
	NSString *twoLine3 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", dValue, @"(", aValue, @"x + ", bValue, @"y = ", cValue,@")",@" \n", aValue,@"(",dValue, @"x + ", eValue, @"y = ", fValue, @")\n"];
	
	tempa = aValue;
	tempc = cValue; 
	
	bValue = bValue*dValue;
	cValue = cValue*dValue;
	dValue = dValue*aValue;
	eValue = eValue*aValue;
	fValue = fValue*aValue;
	aValue = dValue;
	answer = cValue-fValue;
	
	NSString *twoLine4 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", aValue, @"x + ", bValue, @"y = ", cValue,@" \n - \n", dValue, @"x + ", eValue, @"y = ", fValue, @"\n"];
	NSString *twoLine5 = @"Subtract second equation from first equation and solve for y\n";
	NSString *twoLine6 = [NSString stringWithFormat:@"%.2lf%@%.2lf",bValue-eValue, @"y = ",answer];
    NSString *twoLinea6 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"y = ",answer,@"/",(bValue-eValue)];
	answer = answer/(bValue-eValue);
	
	NSString *twoLine7 = [NSString stringWithFormat:@"%@%.2lf%@", @"y = ",answer, @"\n"];
	NSString *twoLine8 = @"Substitute y into first equation to solve for x\n";
	NSString *twoLine9 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf", tempa, @"x + ", answer, @" = ", tempc];
	NSString *twoLine10= [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf", tempa, @"x = ", tempc, @" - ", answer];
	NSString *twoLine11= [NSString stringWithFormat:@"%.2lf%@%.2lf",tempa, @"x = ",(tempc-answer)];
	NSString *twoLine12= [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"x = ",(tempc-answer), @"/",  tempa ];
	NSString *twoLine13= [NSString stringWithFormat:@"%@%.2lf",@"x = ",(tempc-answer)/tempa];
						  
	NSArray  *twoLinesArray = [NSArray arrayWithObjects:twoLine1,twoLine2,twoLine3,twoLine4,twoLine5,twoLine6,twoLinea6,twoLine7,twoLine8,twoLine9,twoLine10,twoLine11,twoLine12,twoLine13, nil];
	twoSol = [[twoLinesArray componentsJoinedByString:@"\n"] retain];
	
	
	texty.text = [NSString stringWithFormat: @"%.2lf", answer];
	answer = (cValue-(answer*bValue))/aValue;
	textx.text = [NSString stringWithFormat: @"%.2lf", answer];
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
																  action:@selector(twoViewSol)];
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

-(void) twoViewSol
{
	
	fullSolutionViewController *fsReference = [[fullSolutionViewController alloc] initWithNibName:@"fullSolutionViewController" bundle:nil];
	fsReference.SOL = twoSol;
	fsReference.TYP = twoType;
	fsReference.EQN = twoEquation;
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
	[button release];
	[a release];
	[b release];
	[c release];
	[d release];
	[e release];
	[f release];
	[textx release];
	[texty release];
	self.contentView = nil;
	self.adBannerView = nil;
    [super dealloc];
}

@end
