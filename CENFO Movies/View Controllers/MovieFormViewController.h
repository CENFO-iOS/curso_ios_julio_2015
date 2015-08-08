//
//  MovieFormViewController.h
//  CENFO Movies
//
//  Created by Simon Cascante on 7/18/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@protocol MovieFormViewControllerDelegate;

@interface MovieFormViewController : UITableViewController 

@property (nonatomic,strong) Movie* movieToEdit;
@property (nonatomic,weak) id<MovieFormViewControllerDelegate> delegate;

@end

@protocol MovieFormViewControllerDelegate <NSObject>

-(void)movieFormViewControllerDidCancel:(MovieFormViewController*)controller;

@optional
-(void)movieFormViewController:(MovieFormViewController*)controller didAddMovie:(Movie*)movie;
-(void)movieFormViewController:(MovieFormViewController*)controller didEditMovie:(Movie*)movie;

@end