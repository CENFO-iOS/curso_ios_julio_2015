//
//  Movie.h
//  CENFO Movies
//
//  Created by Simon Cascante on 7/11/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* genre;
@property (nonatomic,assign) int rating;

+(NSArray*)getSampleMovies;

@end
