#import "Person.h"
#import "MovieDB.h"
#import "NSString+CENFO.h"

@interface Person ()

// Private interface goes here.

@end

@implementation Person

+(Person*)getPersonWithCode:(NSNumber *)code {
    return [Person MR_findFirstWithPredicate:[NSPredicate predicateWithFormat:@"code == %@",code]];
}

+(Person*)newPersonWithDictionary:(NSDictionary *)dictionary {
    return nil;
}

+(Person*)newPersonWithCode:(int)code
                       name:(NSString *)name
                  biography:(NSString *)biography
                profilePath:(NSString *)profilePath {
    Person* person = [Person getPersonWithCode:[NSNumber numberWithInt:code]];
    
    if (!person) {
        person = [Person MR_createEntity];
        person.codeValue = code;
    }
    person.name = name;
    person.biography = biography;
    person.profilePath = profilePath;
    [person saveAndCommit];
    
    return person;
}

@end
