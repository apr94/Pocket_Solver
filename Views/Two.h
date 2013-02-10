//
//  Two.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface Two : UIViewController<ADBannerViewDelegate> {

	IBOutlet UILabel *textx;
	IBOutlet UILabel *texty;
	IBOutlet UITextField *a;
	IBOutlet UITextField *b; 
	IBOutlet UITextField *c;
	IBOutlet UITextField *d;
	IBOutlet UITextField *e; 
	IBOutlet UITextField *f;
	IBOutlet UIButton *button;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;   
	
}




@property (retain, nonatomic) UITextField *a;
-(IBAction)doneA: (id)sender;

@property (retain, nonatomic) UITextField *b;
-(IBAction)doneB: (id)sender;

@property (retain, nonatomic) UITextField *c;
-(IBAction)doneC: (id)sender;

@property (retain, nonatomic) UITextField *d;
-(IBAction)doneD: (id)sender;

@property (retain, nonatomic) UITextField *e;
-(IBAction)doneE: (id)sender;

@property (retain, nonatomic) UITextField *f;
-(IBAction)doneF: (id)sender;

@property (retain, nonatomic) UILabel *textx;

@property (retain, nonatomic) UILabel *texty;

@property (retain, nonatomic) UIButton *button;
-(IBAction)solve: (id)sender;

@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;



@end