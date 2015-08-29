// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.h instead.

@import CoreData;

extern const struct PersonAttributes {
	__unsafe_unretained NSString *biography;
	__unsafe_unretained NSString *birthday;
	__unsafe_unretained NSString *id;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *profile_path;
} PersonAttributes;

extern const struct PersonRelationships {
	__unsafe_unretained NSString *credits;
} PersonRelationships;

@class Credit;

@interface PersonID : NSManagedObjectID {}
@end

@interface _Person : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) PersonID* objectID;

@property (nonatomic, strong) NSString* biography;

//- (BOOL)validateBiography:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* birthday;

//- (BOOL)validateBirthday:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* id;

@property (atomic) int64_t idValue;
- (int64_t)idValue;
- (void)setIdValue:(int64_t)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* profile_path;

//- (BOOL)validateProfile_path:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *credits;

- (NSMutableSet*)creditsSet;

@end

@interface _Person (CreditsCoreDataGeneratedAccessors)
- (void)addCredits:(NSSet*)value_;
- (void)removeCredits:(NSSet*)value_;
- (void)addCreditsObject:(Credit*)value_;
- (void)removeCreditsObject:(Credit*)value_;

@end

@interface _Person (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveBiography;
- (void)setPrimitiveBiography:(NSString*)value;

- (NSDate*)primitiveBirthday;
- (void)setPrimitiveBirthday:(NSDate*)value;

- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int64_t)primitiveIdValue;
- (void)setPrimitiveIdValue:(int64_t)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSString*)primitiveProfile_path;
- (void)setPrimitiveProfile_path:(NSString*)value;

- (NSMutableSet*)primitiveCredits;
- (void)setPrimitiveCredits:(NSMutableSet*)value;

@end
