//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by JENNY MERO on 8/26/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "Recipe.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
  //NSArray *recipeNames;
  //NSArray *recipeImages;
  //NSArray *recipeTimes;
  NSArray *recipes;
  UISearchController *searchController;
  NSArray *searchResults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //Initialize recipes array
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.image = @"egg_benedict.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
  
  
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.image = @"mushroom_risotto.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
  
  recipes = [NSArray arrayWithObjects:recipe1, recipe2, nil];
  
  searchController.searchResultsUpdater = self;
  searchController.dimsBackgroundDuringPresentation = NO;

  
  
    //NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    //NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    //recipeNames = [dict objectForKey:@"Name"];
    //recipeImages = [dict objectForKey:@"Image"];
    //recipeTimes = [dict objectForKey:@"PrepTime"];
  
  searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
  [searchController.searchBar sizeToFit];
  self.tableView.tableHeaderView = searchController.searchBar;
  self.definesPresentationContext =YES;
  
  
//  recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brulee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
//  
//  recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg",
//                   @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg",
//                   @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
//                   @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
//                   @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
//                   @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
//  
//  recipeTimes = [NSArray arrayWithObjects: @"30 min", @"30 min", @"20 min", @"30 min", @"10 min", @"1 hour", @"25 min", @"35 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min", nil];
  
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
  
  if (searchController.active) {
    return searchResults.count;
  } else{
    return [recipes count];
  }
  
  //  return [recipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  static NSString *cellIdentifier = @"Cell";
  CustomTableViewCell *cell = (CustomTableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  //Set values of recipe name and image using properties from the custom class
  Recipe *recipe;
  if (searchController.active) {
    recipe = [searchResults objectAtIndex:indexPath.row];
  } else {
    recipe = [recipes objectAtIndex:indexPath.row];
  }
  
  cell.nameLabel.text = recipe.name;
  cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
  cell.prepTimeLabel.text = recipe.prepTime;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"showRecipeDetail"]){  //verifies identifier of segue, showRecipeDetail
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow]; //Invokes tableview...forSelectedRow to retrieve selected table row
    DetailViewController *destViewController = segue.destinationViewController; //Once row selected, pass DetailViewController
    
    Recipe *recipe;
    //= [recipes objectAtIndex:indexPath.row];
    //destViewController.recipe = recipe;
    
    if (searchController.active) {
      recipe = [searchResults objectAtIndex:indexPath.row];
    } else {
      recipe = [recipes objectAtIndex:indexPath.row];
    }
    
    destViewController.recipe = recipe;
    
  }
}

-(void)filterContentForSearchText:(NSString *) searchText{
  NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains [c] %@", searchText];
  searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
  
}

-(void)updateSearchResultsForSearchController:(UISearchController *)searchController{
  [self filterContentForSearchText: searchController.searchBar.text];
  [self.tableView reloadData];
}


//
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//  NSString* selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
//  UIAlertView *messageAlert = [[UIAlertView alloc]
//                               initWithTitle:@"Row Selected" message: selectedRecipe
//                               delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//  
//  //Display alert message
//  [messageAlert show];
//}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
