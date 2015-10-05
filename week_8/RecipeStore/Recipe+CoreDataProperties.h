//
//  Recipe+CoreDataProperties.h
//  RecipeStore
//
//  Created by JENNY MERO on 10/2/15.
//  Copyright © 2015 Jenny Mero. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Recipe.h"

NS_ASSUME_NONNULL_BEGIN

@interface Recipe (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *image;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *prepTime;

@end

NS_ASSUME_NONNULL_END
