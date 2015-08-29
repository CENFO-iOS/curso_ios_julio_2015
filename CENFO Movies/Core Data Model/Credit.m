#import "Credit.h"

@interface Credit ()

// Private interface goes here.

@end

@implementation Credit

+(Credit*)getCreditWithMovie:(Movie *)movie andPerson:(Person *)person {
    return [Credit MR_findFirstWithPredicate:[NSPredicate predicateWithFormat:@"movie == %@ AND person == %@",movie,person]];
}

+(Credit*)newCreditWithMovie:(Movie *)movie person:(Person *)person character:(NSString *)character {
    Credit* credit = [Credit getCreditWithMovie:movie andPerson:person];
    if (!credit) {
        credit = [Credit MR_createEntity];
        credit.movie = movie;
        credit.person = person;
    }
    credit.character = character;
    [credit saveAndCommit];
    
    return credit;
}

@end
