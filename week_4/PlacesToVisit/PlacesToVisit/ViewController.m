//
//  ViewController.m
//  PlacesToVisit
//
//  Created by JENNY MERO on 8/26/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
  //DEFINE VARIABLES
  
  //Holds table data
  NSMutableArray *places;
  NSArray *placeImages;
  
  
}

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //Initialize table data
  places = [NSMutableArray arrayWithObjects: @"Barcelona, Spain", @"Lisbon, Portugal", @"Madrid, Spain", @"Vancouver, Canada", @"Portland, OR", @"Yosemite Valley, CA", nil];
  placeImages = @[@"Barcelona.jpg", @"Lisbon.jpg", @"Madrid.jpg", @"Vancouver.jpg", @"Portland.jpg", @"Yosemite.jpg"];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

//Implement the two methods part of the UITableViewDataSource protocol
//This method informs the tableview the total number of rows in a section
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [places count];
}

//This method is called every time a table row is displayed
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = @"Cell";
  UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  cell.textLabel.text = [places objectAtIndex:indexPath.row];
  cell.imageView.image = [UIImage imageNamed:[placeImages objectAtIndex:indexPath.row]];
  return cell;
  
}

//Adds delete button
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
  //Remove the row from the data model
  [places removeObjectAtIndex: indexPath.row];
  
  //Request table view to reload
  
  [tableView reloadData];
  
}

@end
