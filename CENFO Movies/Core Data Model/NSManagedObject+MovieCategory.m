//
//  NSManagedObject+MovieCategory.m
//  CENFO Movies
//
//  Created by Simon Cascante on 8/29/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "NSManagedObject+MovieCategory.h"
#import "MagicalRecord.h"

@implementation NSManagedObject (MovieCategory)

-(void)deleteMe {
    [self MR_deleteEntity];
    [self saveAndCommit];
}

-(void)saveAndCommit {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}

+(void)saveAndCommit {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}

@end
