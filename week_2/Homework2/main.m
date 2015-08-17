//
//  main.m
//  Homework2
//
//  Created by JENNY MERO on 8/7/15.
//  Copyright (c) 2015 JENNY MERO. All rights reserved.
//

#import <Foundation/Foundation.h>

//ASSIGNMENT: Create a method that returns the number of words that are in a string.

/*

- (void)printNumberOfWordsInString(NSString*)string  {
    NSArray *words = [string componentsSeparatedByString: @" "];
    
    //Count and print the number of items in the array
    NSInteger wordCount = [words count];
    NSLog(@"%lu",wordCount);
    
}

*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
NSString *str = @"There will be a glass of wine waiting for me when I solve this problem";
NSArray *words = [str componentsSeparatedByString: @" "];
    for (NSArray *item in words) {
       NSLog(@"%@", item);
       }
        //Count and print the number of items in the array
            NSInteger wordCount = [words count];
            NSLog(@"%lu",wordCount);
        
        
    }
    return 0;
}


