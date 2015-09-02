//
//  DetailViewController.h
//  CustomTable
//
//  Created by JENNY MERO on 9/1/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel; //An outlet variable; for text label; static
@property (nonatomic, strong) NSString *recipeName; //Variable for data passing

@end
