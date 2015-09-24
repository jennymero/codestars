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

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
  NSArray *recipeNames;
  NSArray *recipeImages;
  NSArray *recipeTimes;
  UISearchController *searchController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    recipeNames = [dict objectForKey:@"Name"];
    recipeImages = [dict objectForKey:@"Image"];
    recipeTimes = [dict objectForKey:@"PrepTime"];
  
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
  
    return [recipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  static NSString *cellIdentifier = @"Cell";
  CustomTableViewCell *cell = (CustomTableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  //Ser values of recipe name and image using properties from the custom class
  cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
  cell.prepTimeLabel.text = [recipeTimes objectAtIndex:indexPath.row];
  cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"showRecipeDetail"]){  //verifies identifier of segue, showRecipeDetail
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow]; //Invokes tableview...forSelectedRow to retrieve selected table row
    DetailViewController *destViewController = segue.destinationViewController; //Once row selected, pass DetailViewController
    destViewController.recipeName = [recipeNames objectAtIndex:indexPath.row];
    
  }
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
