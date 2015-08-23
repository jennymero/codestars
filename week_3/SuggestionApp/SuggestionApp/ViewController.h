//
//  ViewController.h
//  SuggestionApp
//
//  Created by JENNY MERO on 8/22/15.
//  Copyright (c) 2015 com.jennymero. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Suggestions;

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (strong, nonatomic) Suggestions *suggestionList;


@end

