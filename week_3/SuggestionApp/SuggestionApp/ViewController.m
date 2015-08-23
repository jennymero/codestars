//
//  ViewController.m
//  SuggestionApp
//
//  Created by JENNY MERO on 8/22/15.
//  Copyright (c) 2015 com.jennymero. All rights reserved.
//

#import "ViewController.h"
#import "Suggestions.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
    self.suggestionList = [[Suggestions alloc] init];
  self.funFactLabel.text = [self.suggestionList randomSuggestion];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}



- (IBAction)showFunFact {
  

      self.funFactLabel.text = [self.suggestionList randomSuggestion];
  
}


@end
