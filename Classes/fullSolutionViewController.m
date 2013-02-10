//
//  fullSolutionViewController.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "fullSolutionViewController.h"
#import "pocketSolverAppDelegate.h"


@implementation fullSolutionViewController

@synthesize ssol, seqn, styp, SOL, EQN, TYP;
@synthesize contentView = _contentView;
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Solution With Steps";
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




-(void)viewDidLoad
{
	
	[super viewDidLoad];
	[self createAdBannerView];
	UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithTitle:@"Save"
																   style:UIBarButtonItemStyleBordered
																  target:self
																  action:@selector(callSave:)];
	self.navigationItem.rightBarButtonItem = saveButton;
	[saveButton release];
}

-(void) viewWillAppear:(BOOL)animated
{
	if(TYP == @"Linear Equations: 3 Variables")
	{
		seqn.font = [UIFont fontWithName:@"Helvetica" size:14];
		ssol.font = [UIFont fontWithName:@"Helvetica" size:10];
		styp.font = [UIFont fontWithName:@"Helvetica" size:12];
	}
	
	[super viewWillAppear:animated];
	[self fixupAdView:[UIDevice currentDevice].orientation];
	ssol.text = SOL;
	seqn.text = EQN;
	styp.text = TYP;

}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}


-(IBAction) callSave:(id)sender;
{
	pocketSolverAppDelegate *appDelegate = (pocketSolverAppDelegate *)[[UIApplication sharedApplication] delegate];
	if(SOL != NULL && EQN != NULL && [EQN rangeOfString:@"null"].location == NSNotFound){
		[appDelegate save:SOL forEquation:EQN forType:TYP];
		}
	else 	{UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" 
														  message:@"Could not save. Please try again."
														 delegate:nil 
												cancelButtonTitle:@"OK" 
												otherButtonTitles: nil];
	[alert show];
	[alert release];
	
	}}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    [super dealloc];
	[ssol release];
	[seqn release];
	[styp release];
	[SOL release];
	[EQN release];
	[TYP release];
	self.contentView = nil;
	self.adBannerView = nil;
}


@end
