
//
//  ArrayJoiner.m
//  ps4_question2_joinArrays
//
//  Created by JENNY MERO on 8/21/15.
//  Copyright (c) 2015 com.jm. All rights reserved.
//

#import "ArrayJoiner.h"

@implementation ArrayJoiner


- (NSArray*) combineArraysOne: (NSArray*) firstArray
                       andTwo: (NSArray*) secondArray;
{
  
  NSArray *combinedArray = [firstArray arrayByAddingObjectsFromArray:secondArray];
  
  return combinedArray;
  
}



//-(NSArray*) arrayJoiner:(NSArray*) arrayInput1 : (NSArray*) arrayInput2
//{
//  //Create NSMutableArray that holds the newly joined array
////  NSMutableArray *joinedArray = [[NSMutableArray alloc]init];
//  NSArray *newArray= [arrayInput1 arrayByAddingObjectsFromArray: arrayInput2];
//  
////  NSLog(@"%@", joinedArray);
//  
//  return newArray;
//  
//}
//
@end
