//
//  MovieAPI.h
//  CENFO Movies
//
//  Created by Simon Cascante on 8/29/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "AFHTTPSessionManager.h"

typedef void (^MovieAPIResponse)(id response, NSError *error);

@interface MovieAPI : AFHTTPSessionManager

@property (nonatomic,strong) NSString* imageBaseURLString;

#pragma mark - Init
-(instancetype)initWithBaseURL:(NSURL *)url;
+ (MovieAPI*)sharedMovieAPI;

#pragma mark - Configuration
-(void)getConfiguration;

@end
