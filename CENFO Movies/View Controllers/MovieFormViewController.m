//
//  MovieFormViewController.m
//  CENFO Movies
//
//  Created by Simon Cascante on 7/18/15.
//  Copyright (c) 2015 CENFOTEC. All rights reserved.
//

#import "MovieFormViewController.h"
#import "GenresViewController.h"

@interface MovieFormViewController () <GenresViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel* genreLabel;

@end

@implementation MovieFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.movieToEdit) {
        // Estamos Modificando
        self.title = @"Edit Movie";
        /*
        self.nameTextField.text = self.movieToEdit.name;
        self.genreLabel.text = self.movieToEdit.genre;
         */
    } else {
        self.title = @"New Movie";
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (BOOL)isFormValid {
    if ([self.nameTextField.text isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please write a Movie Title" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        
        [self.nameTextField becomeFirstResponder];
        
        return NO;
    } 
    
    return YES;
}

- (IBAction)done:(UIBarButtonItem *)sender {
    if ([self isFormValid]) {
        if (self.movieToEdit) {
            /*
            self.movieToEdit.name = self.nameTextField.text;
            self.movieToEdit.genre = self.genreLabel.text;
             */
            
            if ([self.delegate respondsToSelector:@selector(movieFormViewController:didEditMovie:)]) {
                [self.delegate movieFormViewController:self didEditMovie:self.movieToEdit];
            }
        } else {
            /*
            Movie* newMovie = [Movie new];
            newMovie.name = self.nameTextField.text;
            newMovie.genre = self.genreLabel.text;
            newMovie.rating = 1;
            */
            if ([self.delegate respondsToSelector:@selector(movieFormViewController:didAddMovie:)]) {
                //[self.delegate movieFormViewController:self didAddMovie:newMovie];
            }
        }
    }
}

- (IBAction)cancel:(UIBarButtonItem *)sender {
    [self.delegate movieFormViewControllerDidCancel:self];
}

#pragma mark - Table View Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        //Muestra el teclado
        [self.nameTextField becomeFirstResponder];
        
        //Oculta el teclado
        //[self.nameTextField resignFirstResponder];
    }
}

#pragma mark - GenresViewControllerDelegate
-(void)genresViewControllerDidCancel:(GenresViewController *)controller {

}

-(void)genresViewcontroller:(GenresViewController *)controller didSelectGenre:(NSString *)genre {
    self.genreLabel.text = genre;
    
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"PickGenre"]) {
        GenresViewController* genresController = segue.destinationViewController;
        genresController.genre = self.genreLabel.text;
        genresController.delegate = self;
    }
}


@end
