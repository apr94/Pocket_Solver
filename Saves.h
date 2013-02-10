//
//  Saves.h
//  pocketSolver
//
//  Created by Aravind Rao on 11-04-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Saves :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * Data;
@property (nonatomic, retain) NSString * Type;
@property (nonatomic, retain) NSString * Equation;

@end



