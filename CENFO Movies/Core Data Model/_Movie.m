// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Movie.m instead.

#import "_Movie.h"

const struct MovieAttributes MovieAttributes = {
	.backdropPath = @"backdropPath",
	.code = @"code",
	.haveVideo = @"haveVideo",
	.overview = @"overview",
	.popularity = @"popularity",
	.posterPath = @"posterPath",
	.releaseDate = @"releaseDate",
	.title = @"title",
	.voteAverage = @"voteAverage",
	.voteCount = @"voteCount",
};

const struct MovieRelationships MovieRelationships = {
	.credits = @"credits",
};

@implementation MovieID
@end

@implementation _Movie

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Movie" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Movie";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Movie" inManagedObjectContext:moc_];
}

- (MovieID*)objectID {
	return (MovieID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"codeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"code"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"haveVideoValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"haveVideo"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"popularityValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"popularity"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"voteAverageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"voteAverage"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"voteCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"voteCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic backdropPath;

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

@dynamic haveVideo;

- (BOOL)haveVideoValue {
	NSNumber *result = [self haveVideo];
	return [result boolValue];
}

- (void)setHaveVideoValue:(BOOL)value_ {
	[self setHaveVideo:@(value_)];
}

- (BOOL)primitiveHaveVideoValue {
	NSNumber *result = [self primitiveHaveVideo];
	return [result boolValue];
}

- (void)setPrimitiveHaveVideoValue:(BOOL)value_ {
	[self setPrimitiveHaveVideo:@(value_)];
}

@dynamic overview;

@dynamic popularity;

- (float)popularityValue {
	NSNumber *result = [self popularity];
	return [result floatValue];
}

- (void)setPopularityValue:(float)value_ {
	[self setPopularity:@(value_)];
}

- (float)primitivePopularityValue {
	NSNumber *result = [self primitivePopularity];
	return [result floatValue];
}

- (void)setPrimitivePopularityValue:(float)value_ {
	[self setPrimitivePopularity:@(value_)];
}

@dynamic posterPath;

@dynamic releaseDate;

@dynamic title;

@dynamic voteAverage;

- (float)voteAverageValue {
	NSNumber *result = [self voteAverage];
	return [result floatValue];
}

- (void)setVoteAverageValue:(float)value_ {
	[self setVoteAverage:@(value_)];
}

- (float)primitiveVoteAverageValue {
	NSNumber *result = [self primitiveVoteAverage];
	return [result floatValue];
}

- (void)setPrimitiveVoteAverageValue:(float)value_ {
	[self setPrimitiveVoteAverage:@(value_)];
}

@dynamic voteCount;

- (int64_t)voteCountValue {
	NSNumber *result = [self voteCount];
	return [result longLongValue];
}

- (void)setVoteCountValue:(int64_t)value_ {
	[self setVoteCount:@(value_)];
}

- (int64_t)primitiveVoteCountValue {
	NSNumber *result = [self primitiveVoteCount];
	return [result longLongValue];
}

- (void)setPrimitiveVoteCountValue:(int64_t)value_ {
	[self setPrimitiveVoteCount:@(value_)];
}

@dynamic credits;

- (NSMutableSet*)creditsSet {
	[self willAccessValueForKey:@"credits"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"credits"];

	[self didAccessValueForKey:@"credits"];
	return result;
}

@end

