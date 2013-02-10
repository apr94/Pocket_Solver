//
//  Three.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-01.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface Three : UIViewController {
	
	IBOutlet UITextField *tA;
	IBOutlet UITextField *tB;
	IBOutlet UITextField *tC;
	IBOutlet UITextField *tD;
	IBOutlet UITextField *tE;
	IBOutlet UITextField *tF;
	IBOutlet UITextField *tG;
	IBOutlet UITextField *tH;
	IBOutlet UITextField *tI;
	IBOutlet UITextField *tJ;
	IBOutlet UITextField *tK;
	IBOutlet UITextField *tL;
	IBOutlet UILabel *tTextx;
	IBOutlet UILabel *tTexty;
	IBOutlet UILabel *tTextz;
	IBOutlet UIButton *tButton;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;   


}

@property (retain, nonatomic) UITextField *tA;
-(IBAction)doneA: (id)sender;

@property (retain, nonatomic) UITextField *tB;
-(IBAction)doneB: (id)sender;

@property (retain, nonatomic) UITextField *tC;
-(IBAction)doneC: (id)sender;

@property (retain, nonatomic) UITextField *tD;
-(IBAction)doneD: (id)sender;

@property (retain, nonatomic) UITextField *tE;
-(IBAction)doneE: (id)sender;

@property (retain, nonatomic) UITextField *tF;
-(IBAction)doneF: (id)sender;

@property (retain, nonatomic) UITextField *tG;
-(IBAction)doneG: (id)sender;

@property (retain, nonatomic) UITextField *tH;
-(IBAction)doneH: (id)sender;

@property (retain, nonatomic) UITextField *tI;
-(IBAction)doneI: (id)sender;

@property (retain, nonatomic) UITextField *tJ;
-(IBAction)doneJ: (id)sender;

@property (retain, nonatomic) UITextField *tK;
-(IBAction)doneK: (id)sender;

@property (retain, nonatomic) UITextField *tL;
-(IBAction)doneL: (id)sender;



@property (retain, nonatomic) UILabel *tTextx;

@property (retain, nonatomic) UILabel *tTexty;

@property (retain, nonatomic) UILabel *tTextz;


@property (retain, nonatomic) UIButton *tButton;
-(IBAction)solve: (id)sender;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;




@end
