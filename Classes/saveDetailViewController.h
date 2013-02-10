//
//  saveDetailViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-24.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"

@class Saves;

@interface saveDetailViewController : UIViewController<ADBannerViewDelegate>  {
 
	Saves * sav;
	
	IBOutlet UITextView *sol;
	IBOutlet UITextView *eqn;
	IBOutlet UILabel*typ; 
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible; 
	
	
}


@property (retain, nonatomic) UITextView *sol;

@property (retain, nonatomic) UITextView *eqn;

@property (retain, nonatomic) UILabel *typ;

@property (retain, nonatomic) Saves *sav;

@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;




@end