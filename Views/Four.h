//
//  Three.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-01.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"

@interface Four : UIViewController<ADBannerViewDelegate>  {
	
	IBOutlet UITextField *fA;
	IBOutlet UITextField *fB;
	IBOutlet UITextField *fC;
	
	IBOutlet UITextField *sA;
	IBOutlet UITextField *sB;
	IBOutlet UITextField *sC;
	
	IBOutlet UITextField *pA;
	IBOutlet UITextField *pB;
	IBOutlet UITextField *pC;
	IBOutlet UITextField *pD;
	

	IBOutlet UILabel *slope;
	IBOutlet UILabel *xin;
	IBOutlet UILabel *yin;
	
	IBOutlet UIButton *fButton;
	IBOutlet UIBarButtonItem *sf;
	IBOutlet UIBarButtonItem *sif;
	IBOutlet UIBarButtonItem *pf;
	
	IBOutlet UIView *v1;
	IBOutlet UIView *v2;
	IBOutlet UIView *v3;
	
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;   
	
	

	

	
}

@property (retain, nonatomic) UITextField *fA;
-(IBAction)doneFA: (id)sender;

@property (retain, nonatomic) UITextField *fB;
-(IBAction)doneFB: (id)sender;

@property (retain, nonatomic) UITextField *fC;
-(IBAction)doneFC: (id)sender;

@property (retain, nonatomic) UITextField *sA;
-(IBAction)doneSA: (id)sender;

@property (retain, nonatomic) UITextField *sB;
-(IBAction)doneSB: (id)sender;

@property (retain, nonatomic) UITextField *sC;
-(IBAction)doneSC: (id)sender;

@property (retain, nonatomic) UITextField *pA;
-(IBAction)donePA: (id)sender;

@property (retain, nonatomic) UITextField *pB;
-(IBAction)donePB: (id)sender;

@property (retain, nonatomic) UITextField *pC;
-(IBAction)donePC: (id)sender;

@property (retain, nonatomic) UITextField *pD;
-(IBAction)donePD: (id)sender;



@property (retain, nonatomic) UILabel *slope;

@property (retain, nonatomic) UILabel *xin;

@property (retain, nonatomic) UILabel *yin;

@property (retain, nonatomic) UIBarButtonItem *sf;

@property (retain, nonatomic) UIBarButtonItem *sif;

@property (retain, nonatomic) UIBarButtonItem *pf;

@property (retain, nonatomic) UIButton *fButton;
-(IBAction)solve: (id)sender;


@property(retain, nonatomic) UIView *v1;

@property(retain, nonatomic) UIView *v2;

@property(retain, nonatomic) UIView *v3;

@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;


@end
