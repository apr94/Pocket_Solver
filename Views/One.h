//
//  One.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"



@interface One : UIViewController<ADBannerViewDelegate>  {
	
	IBOutlet UILabel *text; 
	IBOutlet UITextField *onea;
	IBOutlet UITextField *oneb; 
	IBOutlet UITextField *onec;
	IBOutlet UIButton *onebutton;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;   

}




@property (retain, nonatomic) UITextField *onea;
-(IBAction)doneA: (id)sender;

@property (retain, nonatomic) UITextField *oneb;
-(IBAction)doneB: (id)sender;

@property (retain, nonatomic) UITextField *onec;
-(IBAction)doneC: (id)sender;

@property (retain, nonatomic) UILabel *text;

@property (retain, nonatomic) UIButton *onebutton;
-(IBAction)solve: (id)sender;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;



@end