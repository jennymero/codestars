//
//  main.m
//  ps4_question1_NSArrayCapitalizedFunction
//
//  Created by JENNY MERO on 8/18/15.
//  Copyright (c) 2015 com.jm. All rights reserved.
//

#import <Foundation/Foundation.h>

//Write a function that takes an NSSArray of strings as an argument and returns a new NSArray of the same strings capitalized. For example, if I were to pass the following array @[@"cat", @"dog", @"frog"] it would return @[@"CAT", @"DOG", @"FROG"].

//Declare the function

NSArray *arrayConverter (NSArray *arrayinput){
  
  NSMutableArray *cappedArray = [[NSMutableArray alloc]init];
  
  for (NSString *item in arrayinput) {
    NSString *newItems = [item uppercaseString];
    
    [cappedArray addObject:newItems];
  }
  
  
  return cappedArray;
}


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSArray *myArrayToCapitalize = @[@"cat", @"dog", @"frog"];
    
    NSArray *newArray = arrayConverter(myArrayToCapitalize);
    
    NSLog(@"%@", newArray);

    
    
  }
  return 0;
}


