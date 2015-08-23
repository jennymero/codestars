//
//  Suggestions.m
//  SuggestionApp
//
//  Created by JENNY MERO on 8/22/15.
//  Copyright (c) 2015 com.jennymero. All rights reserved.
//

#import "Suggestions.h"

@implementation Suggestions


- (instancetype)init
{
  self = [super init];
  if (self) {
    
    _allSuggestions = [[NSArray alloc] initWithObjects:
                          @"Eat at Grimaldi's",
                          @"Walk the HighLine",
                          @"Run around Central Park",
                          @"Grab a drink at 240 Fifth Ave",
                          @"Watch a baseball game at Citi Field",
                          @"Stop by the Empire State Building",
                          @"Eat a steak a Peter Luger's",
                          @"Coney Island!",
                          @"Watch Shakespeare in the Park",
                          @"Kayak on the Hudson",
                          @"Frida Kahlo at the Botanical Garden",
              
                          nil];

  }
  return self;
}

- (NSString *) randomSuggestion {
  int random = arc4random_uniform((int)self.allSuggestions.count);
  return [self.allSuggestions objectAtIndex:random];
  
}

@end
