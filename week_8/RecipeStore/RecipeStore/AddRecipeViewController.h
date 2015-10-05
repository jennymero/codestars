//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by JENNY MERO on 10/1/15.
//  Copyright © 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"
#import <CoreData/CoreData.h>


@interface AddRecipeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageTextField;
@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;


-(IBAction)save:(id)sender;
-(IBAction)cancel:(id)sender;

@end
