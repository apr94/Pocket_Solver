    //
//  aboutViewController.m
//  Pocket Solver
//
//  Created by Aravind Rao on 11-09-08.
//  Copyright 2011 Affordable Software Solutions. All rights reserved.
//

#import "aboutViewController.h"


@implementation aboutViewController


@synthesize Image, textView;
@synthesize contentView = _contentView;
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 

NSString *text = @"Pocket Solver by\nAffordable Software Solutions\n\nVisit us at: www.affordablesoftwaresolutions.biz\n\nSend Pocket Solver related mail to pocketsolver@gmail.com\n\nGrab the algorithms in this app from www.homebrewcode.blogspot.com";


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


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





// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self createAdBannerView];
	NSString* imagePath = [[NSBundle mainBundle] pathForResource:@"Logo" ofType:@"png"];
	UIImage* img = [[UIImage alloc] initWithContentsOfFile:imagePath];
	[Image setImage:img];
	Image.contentMode = UIViewContentModeScaleAspectFit;
	
	textView.text = text;
	textView.font = [UIFont fontWithName:@"Helvetica" size:15.0f]; 
	

}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	[self fixupAdView:[UIDevice currentDevice].orientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[textView release];
    [super dealloc];
	[Image release];
	self.contentView = nil;
	self.adBannerView = nil;
}


@end
