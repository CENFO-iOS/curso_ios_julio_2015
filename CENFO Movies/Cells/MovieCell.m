//
//  MovieCell.m
//  CENFO Movies
//
//  Created by Simon Cascante on 9/5/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "MovieCell.h"

@implementation MovieCell

dispatch_queue_t queue;

-(void)setMovie:(Movie *)movie {
    _movie = movie;
    
    self.titleLabel.text = _movie.title;
    self.overviewLabel.text = _movie.overview;
    self.posterImageView.image = [UIImage imageNamed:@"movie-icon"];
    dispatch_async(queue, ^{
        NSData* imageData = [NSData dataWithContentsOfURL:_movie.posterImageURL];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.posterImageView.image = [UIImage imageWithData:imageData];
        });
    });
    
    
    
    
}

- (void)awakeFromNib {
    // Initialization code
    queue = dispatch_queue_create("com.cenfotec.CENFO-Movies.imageQueue", nil);
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
