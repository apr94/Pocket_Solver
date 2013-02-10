//
//  solveViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface solveViewController : UIViewController <ADBannerViewDelegate,UITableViewDelegate, UITableViewDataSource> {
	
	NSMutableArray *info; 
	UITableView *_tableView;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;
	 
}

@property (nonatomic, retain) NSMutableArray *info;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;

@end