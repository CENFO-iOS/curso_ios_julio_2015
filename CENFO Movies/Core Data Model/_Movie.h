// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Movie.h instead.

@import CoreData;

extern const struct MovieAttributes {
	__unsafe_unretained NSString *backdropPath;
	__unsafe_unretained NSString *code;
	__unsafe_unretained NSString *haveVideo;
	__unsafe_unretained NSString *overview;
	__unsafe_unretained NSString *popularity;
	__unsafe_unretained NSString *posterPath;
	__unsafe_unretained NSString *releaseDate;
	__unsafe_unretained NSString *title;
	__unsafe_unretained NSString *voteAverage;
	__unsafe_unretained NSString *voteCount;
} MovieAttributes;

extern const struct MovieRelationships {
	__unsafe_unretained NSString *credits;
} MovieRelationships;

@class Credit;

@interface MovieID : NSManagedObjectID {}
@end

@interface _Movie : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) MovieID* objectID;

@property (nonatomic, strong) NSString* backdropPath;

//- (BOOL)validateBackdropPath:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* code;

@property (atomic) int64_t codeValue;
- (int64_t)codeValue;
- (void)setCodeValue:(int64_t)value_;

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* haveVideo;

@property (atomic) BOOL haveVideoValue;
- (BOOL)haveVideoValue;
- (void)setHaveVideoValue:(BOOL)value_;

//- (BOOL)validateHaveVideo:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* overview;

//- (BOOL)validateOverview:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* popularity;

@property (atomic) float popularityValue;
- (float)popularityValue;
- (void)setPopularityValue:(float)value_;

//- (BOOL)validatePopularity:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* posterPath;

//- (BOOL)validatePosterPath:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* releaseDate;

//- (BOOL)validateReleaseDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* voteAverage;

@property (atomic) float voteAverageValue;
- (float)voteAverageValue;
- (void)setVoteAverageValue:(float)value_;

//- (BOOL)validateVoteAverage:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* voteCount;

@property (atomic) int64_t voteCountValue;
- (int64_t)voteCountValue;
- (void)setVoteCountValue:(int64_t)value_;

//- (BOOL)validateVoteCount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *credits;

- (NSMutableSet*)creditsSet;

@end

@interface _Movie (CreditsCoreDataGeneratedAccessors)
- (void)addCredits:(NSSet*)value_;
- (void)removeCredits:(NSSet*)value_;
- (void)addCreditsObject:(Credit*)value_;
- (void)removeCreditsObject:(Credit*)value_;

@end

@interface _Movie (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveBackdropPath;
- (void)setPrimitiveBackdropPath:(NSString*)value;

- (NSNumber*)primitiveCode;
- (void)setPrimitiveCode:(NSNumber*)value;

- (int64_t)primitiveCodeValue;
- (void)setPrimitiveCodeValue:(int64_t)value_;

- (NSNumber*)primitiveHaveVideo;
- (void)setPrimitiveHaveVideo:(NSNumber*)value;

- (BOOL)primitiveHaveVideoValue;
- (void)setPrimitiveHaveVideoValue:(BOOL)value_;

- (NSString*)primitiveOverview;
- (void)setPrimitiveOverview:(NSString*)value;

- (NSNumber*)primitivePopularity;
- (void)setPrimitivePopularity:(NSNumber*)value;

- (float)primitivePopularityValue;
- (void)setPrimitivePopularityValue:(float)value_;

- (NSString*)primitivePosterPath;
- (void)setPrimitivePosterPath:(NSString*)value;

- (NSDate*)primitiveReleaseDate;
- (void)setPrimitiveReleaseDate:(NSDate*)value;

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (NSNumber*)primitiveVoteAverage;
- (void)setPrimitiveVoteAverage:(NSNumber*)value;

- (float)primitiveVoteAverageValue;
- (void)setPrimitiveVoteAverageValue:(float)value_;

- (NSNumber*)primitiveVoteCount;
- (void)setPrimitiveVoteCount:(NSNumber*)value;

- (int64_t)primitiveVoteCountValue;
- (void)setPrimitiveVoteCountValue:(int64_t)value_;

- (NSMutableSet*)primitiveCredits;
- (void)setPrimitiveCredits:(NSMutableSet*)value;

@end
