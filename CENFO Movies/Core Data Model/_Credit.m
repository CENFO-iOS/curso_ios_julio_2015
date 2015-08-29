// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Credit.m instead.

#import "_Credit.h"

const struct CreditAttributes CreditAttributes = {
	.character = @"character",
};

const struct CreditRelationships CreditRelationships = {
	.movie = @"movie",
	.person = @"person",
};

@implementation CreditID
@end

@implementation _Credit

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Credit" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Credit";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Credit" inManagedObjectContext:moc_];
}

- (CreditID*)objectID {
	return (CreditID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic character;

@dynamic movie;

@dynamic person;

@end

