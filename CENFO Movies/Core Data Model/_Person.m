// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.m instead.

#import "_Person.h"

const struct PersonAttributes PersonAttributes = {
	.biography = @"biography",
	.birthday = @"birthday",
	.code = @"code",
	.name = @"name",
	.profilePath = @"profilePath",
};

const struct PersonRelationships PersonRelationships = {
	.credits = @"credits",
};

@implementation PersonID
@end

@implementation _Person

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Person";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Person" inManagedObjectContext:moc_];
}

- (PersonID*)objectID {
	return (PersonID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"codeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"code"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic biography;

@dynamic birthday;

@dynamic code;

- (int64_t)codeValue {
	NSNumber *result = [self code];
	return [result longLongValue];
}

- (void)setCodeValue:(int64_t)value_ {
	[self setCode:@(value_)];
}

- (int64_t)primitiveCodeValue {
	NSNumber *result = [self primitiveCode];
	return [result longLongValue];
}

- (void)setPrimitiveCodeValue:(int64_t)value_ {
	[self setPrimitiveCode:@(value_)];
}

@dynamic name;

@dynamic profilePath;

@dynamic credits;

- (NSMutableSet*)creditsSet {
	[self willAccessValueForKey:@"credits"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"credits"];

	[self didAccessValueForKey:@"credits"];
	return result;
}

@end

