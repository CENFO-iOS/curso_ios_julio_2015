#import "Movie.h"
#import "NSString+CENFO.h"

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
                        popularity:[dictionary[@"popularity"] floatValue]
                        posterPath:dictionary[@"poster_path"]
                       releaseDate:[dictionary[@"release_date"]
                                    convertToDate]
                       voteAverage:[dictionary[@"vote_average"] floatValue]
                         voteCount:[dictionary[@"vote_count"] intValue]];
}

+(Movie*)newMovieWithCode:(int)code
                    title:(NSString*)title
                haveVideo:(BOOL)haveVideo
                 overview:(NSString*)overview
               popularity:(float)popularity
               posterPath:(NSString*)posterPath
              releaseDate:(NSDate*)releaseDate
              voteAverage:(float)voteAverage
                voteCount:(int)voteCount {
    Movie* movie = [Movie getMovieWithCode:[NSNumber numberWithInt:code]];
    
    if (!movie) {
        movie = [Movie MR_createEntity];
        movie.codeValue = code;
    }
    movie.title = title;
    movie.haveVideoValue = haveVideo;
    movie.popularityValue = popularity;
    movie.overview = overview;
    movie.posterPath = posterPath;
    movie.releaseDate = releaseDate;
    movie.voteAverageValue = voteAverage;
    movie.voteCountValue = voteCount;
    
    [movie saveAndCommit];
    
    return movie;
}

@end
