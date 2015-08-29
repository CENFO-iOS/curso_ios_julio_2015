//
//  NSManagedObject+MovieCategory.h
//  CENFO Movies
//
//  Created by Simon Cascante on 8/29/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (MovieCategory)

-(void)saveAndCommit;
+(void)saveAndCommit;
-(void)deleteMe;

@end
