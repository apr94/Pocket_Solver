//
//  generalReferenceViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-16.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface generalReferenceViewController : UIViewController<ADBannerViewDelegate>  {

	IBOutlet UILabel *nameLabel;
	IBOutlet UITextView *textView;
	NSDictionary *references;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible; 
}

@property(nonatomic, retain) UILabel *nameLabel;
@property(nonatomic, retain) UITextView *textView;
@property(nonatomic, retain) NSDictionary *references;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;



@end
