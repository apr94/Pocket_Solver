//
//  referenceViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iAd/ADBannerView.h"


@interface referenceViewController : UIViewController <ADBannerViewDelegate,UITableViewDelegate, UITableViewDataSource> {

    NSMutableArray *equationTemplates;
	NSMutableArray *generalReferenceArray;
	UITableView *_tableView;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;   
	
 
}
 
@property (nonatomic, retain) NSMutableArray *equationTemplates;
@property (nonatomic, retain) NSMutableArray *generalReferenceArray;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;



@end