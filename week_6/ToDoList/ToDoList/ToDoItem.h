//
//  ToDoItem.h
//  ToDoList
//
//  Created by JENNY MERO on 9/17/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
