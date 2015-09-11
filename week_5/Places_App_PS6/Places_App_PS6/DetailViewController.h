//
//  DetailViewController.h
//  Places_App_PS6
//
//  Created by JENNY MERO on 9/10/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *placeLabel;
@property (nonatomic, strong) NSString *placeName;

@end
