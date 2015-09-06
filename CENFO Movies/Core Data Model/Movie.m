#import "Movie.h"
#import "NSString+CENFO.h"
#import "MovieAPI.h"

@interface Movie ()

// Private interface goes here.

@end

@implementation Movie

-(NSURL*)posterImageURL {
    NSString* baseURL = [[MovieAPI sharedMovieAPI] imageBaseURLString];
    return [NSURL URLWithString:[baseURL stringByAppendingString:[NSString stringWithFormat:@"w500/%@",self.posterPath]]];
}

#pragma mark - Fetchs
+(NSFetchedResultsController*)fetchAllMoviesWithDelegate:(id<NSFetchedResultsControllerDelegate>)delegate {
    return [Movie MR_fetchAllSortedBy:@"releaseDate"
                            ascending:NO
                        withPredicate:nil
                              groupBy:nil
                             delegate:delegate];
}

+(NSFetchedResultsController*)fetchAllMoviesGroupedByVideoWithDelegate:(id<NSFetchedResultsControllerDelegate>)delegate {
    /*
     OJO: Si agrupan por X campo, usarlo en el SortedBy primero
     */
    return [Movie MR_fetchAllSortedBy:@"haveVideo,releaseDate"
                            ascending:NO
                        withPredicate:nil
                              groupBy:@"haveVideo"
                             delegate:delegate];
}

#pragma mark - Queries
+(Movie*)getMovieWithCode:(NSNumber *)code {
    return [Movie MR_findFirstWithPredicate:[NSPredicate predicateWithFormat:@"code == %@",code]];
}

#pragma mark - Inserts
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
