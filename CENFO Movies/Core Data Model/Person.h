#import "_Person.h"

@interface Person : _Person {}
// Custom logic goes here.
+(Person*)getPersonWithCode:(NSNumber*)code;

+(Person*)newPersonWithDictionary:(NSDictionary*)dictionary;
+(Person*)newPersonWithCode:(int)code
                       name:(NSString*)name
                  biography:(NSString*)biography
                profilePath:(NSString*)profilePath;

@end
