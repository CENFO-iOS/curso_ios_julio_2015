//
//  MovieAPI.m
//  CENFO Movies
//
//  Created by Simon Cascante on 8/29/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "MovieAPI.h"

static NSString * const kAPIURLString = @"http://api.themoviedb.org/3/";
static NSString * const kAPIKey = @"3ee78ac4ee39420ef1b0746e909bc48b";

@implementation MovieAPI

#pragma mark - Initialization
+ (MovieAPI*)sharedMovieAPI {
    static MovieAPI* sharedApi = nil;
    
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        sharedApi = [[self alloc] initWithBaseURL:[NSURL URLWithString:kAPIURLString]];
    });
    
    return sharedApi;
}


-(instancetype)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    
    if (self) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        
    }
    
    return self;
}

#pragma mark - Configuration
-(void)getConfiguration {
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"api_key"] = kAPIKey;
    [self GET:@"configuration" parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
        self.imageBaseURLString = responseObject[@"images"][@"base_url"];
        NSLog(@"%@",self.imageBaseURLString);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
