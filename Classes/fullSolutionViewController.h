//
//  fullSolutionViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface fullSolutionViewController : UIViewController {

	IBOutlet UITextView *ssol;
	IBOutlet UITextView *seqn;
	IBOutlet UILabel*styp; 

	
	NSString *SOL;
	NSString *EQN;
	NSString *TYP;
	
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;  
	
}


@property (retain, nonatomic) UITextView *ssol;

@property (retain, nonatomic) UITextView *seqn;

@property (retain, nonatomic) UILabel *styp;

@property (retain, nonatomic) NSString *SOL;

@property (retain, nonatomic) NSString *EQN;

@property (retain, nonatomic) NSString *TYP;

@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;



@end
