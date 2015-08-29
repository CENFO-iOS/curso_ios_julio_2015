#import "_Credit.h"
#import "MovieDB.h"

@interface Credit : _Credit {}

+(Credit*)getCreditWithMovie:(Movie*)movie andPerson:(Person*)person;
+(Credit*)newCreditWithMovie:(Movie*)movie person:(Person*)person character:(NSString*)character;

@end
