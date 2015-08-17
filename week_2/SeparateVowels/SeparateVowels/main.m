//
//  main.m
//  SeparateVowels
//
//  Created by JENNY MERO on 8/9/15.
//  Copyright (c) 2015 JENNY MERO. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *myString = @"My simple sentence";
        
        NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[myString length]];
        for (int i=0; i < [myString length]; i++) {
            NSString *ichar  = [NSString stringWithFormat:@"%c", [myString characterAtIndex:i]];
            [characters addObject:ichar];
        }
        NSLog(@"These are the characters: %@ ", characters);
        
        //Pull out vowels with if statement
        if (characters == 'a') {
            NSInteger vowelCount = [characters count];
            NSLog(@"%lu",vowelCount);
        }
            


    }
    return 0;
}


