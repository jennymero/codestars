//
//  Recipe.h
//  RecipeStore
//
//  Created by JENNY MERO on 10/2/15.
//  Copyright © 2015 Jenny Mero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Recipe : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
@property (nonatomic, retain) NSString *image;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *prepTime;



@end

NS_ASSUME_NONNULL_END

#import "Recipe+CoreDataProperties.h"
