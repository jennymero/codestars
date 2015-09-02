//
//  CustomTableViewCell.h
//  CustomTable
//
//  Created by JENNY MERO on 8/26/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
