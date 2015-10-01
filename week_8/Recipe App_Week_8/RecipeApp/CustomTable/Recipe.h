//
//  Recipe.h
//  CustomTable
//
//  Created by JENNY MERO on 9/24/15.
//  Copyright © 2015 Jenny Mero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prepTime;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSArray *ingredients;

@end
