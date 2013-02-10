//
//  Two.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Three.h"
#import "fullSolutionViewController.h"


@implementation Three

@synthesize  tA, tB, tC, tD, tE, tF, tG, tH, tI, tJ, tK, tL, tButton, tTextx, tTexty, tTextz;
@synthesize contentView = _contentView; 
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 

double taValue = 0.0;
double tbValue = 0.0;
double tcValue = 0.0;
double tdValue = 0.0;
double teValue = 0.0;
double tfValue = 0.0;
double tgValue = 0.0;
double thValue = 0.0;
double tiValue = 0.0;
double tjValue = 0.0;
double tkValue = 0.0;
double tlValue = 0.0;
NSString *temps;

double ae1 = 0.0;
double be1 = 0.0;
double ce1 = 0.0;
double ae2 = 0.0;
double be2 = 0.0;
double ce2 = 0.0;

double tanswer = 0.0;

NSString * threeEquation;
NSString * threeType = @"Linear Equation: 3 Variables";
NSString * threeSol;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"LE: 3 Variables";
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
		taValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		taValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneB:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tbValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tbValue = num/den;
	}
	[sender resignFirstResponder];
	
}

-(IBAction) doneC:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tcValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tcValue = num/den;
	}
	[sender resignFirstResponder];
}


-(IBAction) doneD:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tdValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tdValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneE:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		teValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		teValue = num/den;
	}
	[sender resignFirstResponder];
	
}

-(IBAction) doneF:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tfValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tfValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneG:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tgValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tgValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneH:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		thValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		thValue = num/den;
	}
	[sender resignFirstResponder];
	
}

-(IBAction) doneI:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tiValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tiValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneJ:(id)sender;
{temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tjValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tjValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneK:(id)sender;
{
	temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tkValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tkValue = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneL:(id)sender;
{temps = [[sender text]retain];
	
	if([temps rangeOfString:@"/"].location == NSNotFound)
	{
		tlValue = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [temps componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		tlValue = num/den;
	}
	[sender resignFirstResponder];
}




-(IBAction) solve:(id)sender;
{
	ae1 = (tbValue*teValue)-(tfValue*taValue);
	be1 = (tcValue*teValue)-(tgValue*taValue);
	ce1 = (tdValue*teValue)-(thValue*taValue);
	
	ae2 = (tbValue*tiValue)-(tjValue*taValue);
	be2 = (tcValue*tiValue)-(tkValue*taValue);
	ce2 = (tdValue*tiValue)-(tlValue*taValue);
	
	tanswer = ((ce1*ae2)-(ce2*ae1))/((be1*ae2)-(be2*ae1));
	tTextz.text = [NSString stringWithFormat: @"%.2lf", tanswer];
	tTexty.text = [NSString stringWithFormat: @"%.2lf", ((ce1-(tanswer*be1))/ae1)];
	tTextx.text = [NSString stringWithFormat: @"%.2lf", (tdValue-(tanswer*tcValue)-(tbValue*((ce1-(tanswer*be1))/ae1)))/(taValue)];
	
	NSString *threeLine = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf", taValue, @"x + ", tbValue, @"y + ", tcValue, @"z = ", tdValue, @" \n", teValue, @"x + ", tfValue, @"y + ", tgValue, @"z = ", thValue, @" \n", tiValue, @"x + ", tjValue, @"y + ", tkValue, @"z = ", tlValue];
	threeEquation = [threeLine retain];
	
	NSString *tLine1 = @"Multiply equations 1 and 2 by the the coefficients in front of their x variable and subtract equation 2 from equation 1 to eliminate x.\n";
	NSString *tLine2 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", teValue, @"(", taValue, @"x + ", tbValue, @"y + ", tcValue, @"z = ", tdValue,@") \n", taValue,@"(",teValue, @"x + ", tfValue, @"y + ", tgValue,@"z = ",thValue, @")\n"];
	NSString *tLine3 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf", taValue*teValue, @"x + ", tbValue*teValue, @"y + ", tcValue*teValue, @"z = ", tdValue*teValue,@"\n - \n",teValue*taValue, @"x + ", tfValue*taValue, @"y + ", tgValue*taValue,@"z = ",thValue*taValue, @"\n = \n" , ae1, @"y + ", be1,@"z = ",ce1];
	NSString *tLine4 = @"\n We now have equation number 4. Do the same with equations 1 and 3 to obtain equation number 5.\n";
	NSString *tLine5 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", tiValue, @"(", taValue, @"x + ", tbValue, @"y + ", tcValue, @"z = ", tdValue,@") \n", taValue,@"(",tiValue, @"x + ", tjValue, @"y + ", tkValue,@"z = ",tlValue, @")\n"];
	NSString *tLine6 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf", taValue*tiValue, @"x + ", tbValue*tiValue, @"y + ", tcValue*tiValue, @"z = ", tdValue*tiValue,@"\n - \n",tiValue*taValue, @"x + ", tjValue*taValue, @"y + ", tkValue*taValue,@"z = ",tlValue*taValue, @"\n = \n" , ae2, @"y + ", be2,@"z = ",ce2];
	NSString *tLine7 = @"\nWe now have equation number 5. Multiply equations 4 and 5 by the the coefficients in front of their y variable and subtract equation 5 from equation 4 to eliminate y.\n";
	NSString *tLine8 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", ae2, @"(",ae1, @"y + ", be1, @"z = ", ce1,@") \n - \n", ae1,@"(", ae2, @"y + ", be2,@"z = ",ce2, @")\n = \n", (be1*ae2)-(be2*ae1), @"z = ", (ce1*ae2)-(ce2*ae1), @"\n" ];
	NSString *tLine9 = [NSString stringWithFormat:@"%@%.2lf", @"Solving for z, we get z to be equal to: ", tanswer];
	NSString *tLine10 = [NSString stringWithFormat:@"%@%.2lf", @"Substituing for z in equation 4, we get y to be equal to: ", ((ce1-(tanswer*be1))/ae1)];
	NSString *tLine11 = [NSString stringWithFormat:@"%@%.2lf", @"Substituing for y and z in equation 1, we get x to be equal to: ", (tdValue-(tanswer*tcValue)-(tbValue*((ce1-(tanswer*be1))/ae1)))/(taValue)];
	
	
	NSArray  *threeLinesArray = [NSArray arrayWithObjects:tLine1,tLine2,tLine3,tLine4,tLine5,tLine6,tLine7,tLine8,tLine9,tLine10,tLine11,nil];
	threeSol = [[threeLinesArray componentsJoinedByString:@"\n"] retain];
	
	
}


-(void) threeViewSol
{
	
	fullSolutionViewController *fsReference = [[fullSolutionViewController alloc] initWithNibName:@"fullSolutionViewController" bundle:nil];
	fsReference.SOL = threeSol;
	fsReference.TYP = threeType;
	fsReference.EQN = threeEquation;
	[self.navigationController pushViewController:fsReference animated:YES];
	[fsReference release];
}




- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return FALSE;
}

-(void)viewDidLoad
{
	[super viewDidLoad];
	[self createAdBannerView];
	UIBarButtonItem *viewButton = [[UIBarButtonItem alloc] initWithTitle:@"Steps"
																   style:UIBarButtonItemStyleBordered
																  target:self
																  action:@selector(threeViewSol)];
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
	[tTextx release];
	[tA release];
	[tB release];
	[tC release];
	[tD release];
	[tE release];
	[tF release];
	[tG release];
	[tH release];
	[tI release];	
	[tJ release];
	[tK release];
	[tL release];
	[tTexty release];
	[tTextz release];
	[tButton release];
	self.contentView = nil;
	self.adBannerView = nil;
    [super dealloc];
}

@end
