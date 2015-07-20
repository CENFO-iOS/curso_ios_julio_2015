//
//  GenresViewController.h
//  CENFO Movies
//
//  Created by Simon Cascante on 7/18/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GenresViewController;

@protocol GenresViewControllerDelegate <NSObject>

-(void)genresViewControllerDidCancel:(GenresViewController*)controller;

@optional
-(void)genresViewcontroller:(GenresViewController*)controller didSelectGenre:(NSString*)genre;

@end

@interface GenresViewController : UITableViewController

@property (nonatomic,strong) NSString* genre;
@property (nonatomic,weak) id<GenresViewControllerDelegate> delegate;

@end
