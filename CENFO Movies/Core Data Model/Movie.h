#import "_Movie.h"
#import "MovieDB.h"

@interface Movie : _Movie {}
// Custom logic goes here.

+(Movie*)newMovieWithDictionary:(NSDictionary*)dictionary;

+(Movie*)getMovieWithCode:(NSNumber*)code;
+(Movie*)newMovieWithCode:(int)code
                    title:(NSString*)title
                haveVideo:(BOOL)haveVideo
                 overview:(NSString*)overview
               popularity:(float)popularity;

@end
