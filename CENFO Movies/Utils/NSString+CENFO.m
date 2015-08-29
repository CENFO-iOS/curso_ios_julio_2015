//
//  NSString+CENFO.m
//  CENFO Movies
//
//  Created by Simon Cascante on 8/29/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "NSString+CENFO.h"

@implementation NSString (CENFO)

-(NSDate*)convertToDate {
    NSDateFormatter* df = [NSDateFormatter new];
    df.dateFormat = @"yyyy-MM-dd";
    
    return [df dateFromString:self];
}

@end
