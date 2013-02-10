//
//  aboutViewController.h
//  Pocket Solver
//
//  Created by Aravind Rao on 11-09-08.
//  Copyright 2011 Affordable Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface aboutViewController : UIViewController<ADBannerViewDelegate> 
{
	
   IBOutlet UIImageView *Image;
	IBOutlet UITextView *textView;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;  
	
	
}

@property (nonatomic, retain) UIImageView *Image;
@property (nonatomic, retain) UITextView *textView;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;

@end
