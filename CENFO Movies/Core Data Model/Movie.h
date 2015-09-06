#import "_Movie.h"
#import "MovieDB.h"

@interface Movie : _Movie {}
// Custom logic goes here.

@property (readonly,strong,nonatomic) NSURL* posterImageURL;

+(Movie*)newMovieWithDictionary:(NSDictionary*)dictionary;

+(Movie*)getMovieWithCode:(NSNumber*)code;
+(Movie*)newMovieWithCode:(int)code
                    title:(NSString*)title
                haveVideo:(BOOL)haveVideo
                 overview:(NSString*)overview
               popularity:(float)popularity
               posterPath:(NSString*)posterPath
              releaseDate:(NSDate*)releaseDate
              voteAverage:(float)voteAverage
                voteCount:(int)voteCount;

#pragma mark - Fetchs
+(NSFetchedResultsController*)fetchAllMoviesWithDelegate:(id<NSFetchedResultsControllerDelegate>)delegate;
+(NSFetchedResultsController*)fetchAllMoviesGroupedByVideoWithDelegate:(id<NSFetchedResultsControllerDelegate>)delegate;

@end
