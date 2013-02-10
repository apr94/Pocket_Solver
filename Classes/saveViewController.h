//
//  saveViewController.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-24.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface saveViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
    NSFetchedResultsController *_fetchedResultsController;
    NSManagedObjectContext *_context;   

}

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *context;


@end