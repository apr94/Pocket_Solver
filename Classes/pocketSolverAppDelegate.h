//
//  pocketSolverAppDelegate.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface pocketSolverAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
	UITabBarController *tabbarcontroller;
	UINavigationController *sNavController;


@private
    NSManagedObjectContext *managedObjectContext_;
    NSManagedObjectModel *managedObjectModel_;
    NSPersistentStoreCoordinator *persistentStoreCoordinator_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabbarcontroller;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain) IBOutlet UINavigationController *sNavController;


- (NSURL *)applicationDocumentsDirectory;
- (void)saveContext;

@end

