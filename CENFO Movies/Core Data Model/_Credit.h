// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Credit.h instead.

@import CoreData;

extern const struct CreditAttributes {
	__unsafe_unretained NSString *character;
} CreditAttributes;

extern const struct CreditRelationships {
	__unsafe_unretained NSString *movie;
	__unsafe_unretained NSString *person;
} CreditRelationships;

@class Movie;
@class Person;

@interface CreditID : NSManagedObjectID {}
@end

@interface _Credit : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CreditID* objectID;

@property (nonatomic, strong) NSString* character;

//- (BOOL)validateCharacter:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Movie *movie;

//- (BOOL)validateMovie:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Person *person;

//- (BOOL)validatePerson:(id*)value_ error:(NSError**)error_;

@end

@interface _Credit (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveCharacter;
- (void)setPrimitiveCharacter:(NSString*)value;

- (Movie*)primitiveMovie;
- (void)setPrimitiveMovie:(Movie*)value;

- (Person*)primitivePerson;
- (void)setPrimitivePerson:(Person*)value;

@end
