//
//  MovieCell.h
//  CENFO Movies
//
//  Created by Simon Cascante on 9/5/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDB.h"

@interface MovieCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UIImageView* posterImageView;
@property (nonatomic,weak) IBOutlet UILabel* titleLabel;
@property (nonatomic,weak) IBOutlet UILabel* overviewLabel;

@property (nonatomic,strong) Movie* movie;

@end
