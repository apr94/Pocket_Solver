//
//  templateDetailViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"

@class Template; 

@interface templateDetailViewController : UIViewController 
{
   NSDictionary *temp;
	UILabel *descLabel;
	UITextView *descView;
	UILabel *exampleLabel;
	UITextView *exampleView;
	UILabel *nameLabel;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible; 
}

@property (nonatomic, retain)  NSDictionary *temp;
@property (nonatomic, retain) IBOutlet UILabel *descLabel;
@property (nonatomic, retain) IBOutlet UITextView *descView;
@property (nonatomic, retain) IBOutlet UILabel *exampleLabel;
@property (nonatomic, retain) IBOutlet UITextView *exampleView;
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;

@end
