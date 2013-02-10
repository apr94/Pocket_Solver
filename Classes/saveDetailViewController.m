//
//  saveDetailViewController.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-24.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "saveDetailViewController.h"
#import "Saves.h"

@implementation saveDetailViewController

@synthesize sol, eqn, typ, sav;
@synthesize contentView = _contentView;
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Saved Equation";
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


-(void) viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	if(sav.Type == @"Linear Equations: 3 Variables")
	{
		eqn.font = [UIFont fontWithName:@"Helvetica" size:14];
		sol.font = [UIFont fontWithName:@"Helvetica" size:10];
		typ.font = [UIFont fontWithName:@"Helvetica" size:12];
	}
	
	
	eqn.text = sav.Equation;
	typ.text = sav.Type;
	sol.text = sav.Data;
	[self fixupAdView:[UIDevice currentDevice].orientation];
}


- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


-(void)viewDidLoad
{
	[super viewDidLoad];
	[self createAdBannerView];
	
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
	[sol release];
	[eqn release];
	[typ release];
	[sav release];
	self.contentView = nil;
	self.adBannerView = nil;

}


@end
