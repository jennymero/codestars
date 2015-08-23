//
//  main.m
//  shapeClass
//
//  Created by JENNY MERO on 8/4/15.
//  Copyright (c) 2015 JENNY MERO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"   
#import "Square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
      Shape *newShape = [[Shape alloc]init];
      newShape.width = 5;
      newShape.height =8;
      NSLog(@"Here is the total area %i", [newShape calculateArea]);
      
      Square *newSquare = [[Square alloc]init];
      newSquare.height = 5;
      newSquare.width = 5;
      NSLog(@"Here is the total area of the square %i", [newSquare squareArea]);
      
      Circle *newCircle = [[Circle alloc]init];
      newCircle.radius = 4;
      NSLog(@"This is the area of the circle %2f", [newCircle areaCircle]);
      
        
    }
    return 0;
}
