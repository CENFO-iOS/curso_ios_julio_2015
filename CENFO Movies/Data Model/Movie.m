//
//  Movie.m
//  CENFO Movies
//
//  Created by Simon Cascante on 7/11/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "Movie.h"

@implementation Movie

+(NSArray*)getSampleMovies {
    NSMutableArray* movies = [NSMutableArray array];
    //NSMutableArray* movies = [NSMutableArray new];
    //NSMutableArray* movies = [[NSMutableArray alloc] init];
    
    //Declarando una instancia de Movie
    Movie* movie = [Movie new];
    
    //Seteando las propiedades
    movie.name = @"Jurassic World";
    movie.genre = @"Actions";
    movie.rating = 4;
    
    //Agregando la instancia al Array
    [movies addObject:movie];
    
    movie = [Movie new];
    movie.name = @"Minions";
    movie.genre = @"Cartoon";
    movie.rating = 5;
    [movies addObject:movie];
    
    movie = [Movie new];
    movie.name = @"300";
    movie.genre = @"Action";
    movie.rating = 2;
    [movies addObject:movie];
    
    
    return [movies copy];
}

+(NSArray*)getSampleGenres {
    return @[@"Action",@"Comedy",@"Thriller",@"Drama"];
}

@end
