//
//  MoviesViewController.m
//  CENFO Movies
//
//  Created by Simon Cascante on 7/11/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "MoviesViewController.h"
#import "MovieFormViewController.h"
#import "Movie.h"

@interface MoviesViewController () <MovieFormViewControllerDelegate>

@property (nonatomic,strong) NSMutableArray* movies;

@end

@implementation MoviesViewController

#pragma mark - View Life Cycle
// 1. Vista Carga - No se sabe las dimensiones
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem* add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addMovie)];
    self.navigationItem.rightBarButtonItem = add;
    
    self.movies = [[Movie getSampleMovies] mutableCopy];
    //NSArray* movieList = [Movie getSampleMovies];
    //self.movies = [movieList mutableCopy];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

// 2. Vista lista para mostrarse - Aun no se ve
// Hacer cualquier cambio de interfaz que se requiera
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

//3. Vista mostrada al usuario
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated {

}

-(void)viewDidDisappear:(BOOL)animated {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods
-(void)addMovie {
    [self performSegueWithIdentifier:@"AddMovie" sender:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.movies.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
    
    // Configure the cell...
    Movie* movie = self.movies[indexPath.row];
    
    cell.textLabel.text = movie.name;
    cell.detailTextLabel.text = movie.genre;
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.movies removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"ShowMovie" sender:indexPath];
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"ShowMovie"]) {
        NSIndexPath* indexPath = sender;
        Movie* movie = [self.movies objectAtIndex:indexPath.row];
        
        UINavigationController* navController = segue.destinationViewController;
        MovieFormViewController* formController = [navController.viewControllers firstObject];
        formController.movieToEdit = movie;
        formController.delegate = self;
    } else if ([segue.identifier isEqualToString:@"AddMovie"]) {
        UINavigationController* navController = segue.destinationViewController;
        MovieFormViewController* formController = [navController.viewControllers firstObject];
        formController.delegate = self;
    }
}

#pragma mark - MovieFormViewControllerDelegate
-(void)movieFormViewControllerDidCancel:(MovieFormViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)movieFormViewController:(MovieFormViewController *)controller didEditMovie:(Movie *)movie {
    
    [self dismissViewControllerAnimated:YES completion:^{
        //MANERA INCORRECTA: OJO!!!!
        //ESTE METODO RECARGA TODA LA TABLA
        //[self.tableView reloadData];
        
        //MANERA CORRECTISIMA!
        //Esto solo recarga una sola fila
        NSUInteger movieIndex = [self.movies indexOfObject:movie];
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem:movieIndex inSection:0];
        [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }];
    
    

}

-(void)movieFormViewController:(MovieFormViewController *)controller didAddMovie:(Movie *)movie {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.movies addObject:movie];
    NSIndexPath* indexPath = [NSIndexPath indexPathForItem:self.movies.count-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
}

@end
