//
//  Suggestions.h
//  SuggestionApp
//
//  Created by JENNY MERO on 8/22/15.
//  Copyright (c) 2015 com.jennymero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Suggestions : NSObject

@property (strong, nonatomic) NSArray *allSuggestions;
- (NSString *) randomSuggestion;

@end
