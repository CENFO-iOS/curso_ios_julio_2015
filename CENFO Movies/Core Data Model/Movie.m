#import "Movie.h"

@interface Movie ()

// Private interface goes here.

@end

@implementation Movie

+(Movie*)getMovieWithCode:(NSNumber *)code {
    return [Movie MR_findFirstWithPredicate:[NSPredicate predicateWithFormat:@"code == %@",code]];
}

+(Movie*)newMovieWithDictionary:(NSDictionary*)dictionary {
    return [Movie newMovieWithCode:[dictionary[@"id"] intValue]
                             title:dictionary[@"title"]
                         haveVideo:[dictionary[@"video"] boolValue]
                          overview:dictionary[@"overview"]
                        popularity:[dictionary[@"popularity"] floatValue]];
}

+(Movie*)newMovieWithCode:(int)code title:(NSString *)title haveVideo:(BOOL)haveVideo overview:(NSString *)overview popularity:(float)popularity {
    Movie* movie = [Movie getMovieWithCode:[NSNumber numberWithInt:code]];
    
    if (!movie) {
        movie = [Movie MR_createEntity];
        movie.codeValue = code;
    }
    movie.title = title;
    movie.haveVideoValue = haveVideo;
    movie.popularityValue = popularity;
    movie.overview = overview;
    
    [movie saveAndCommit];
    
    return movie;
}

@end
