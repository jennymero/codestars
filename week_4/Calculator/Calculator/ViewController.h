//
//  ViewController.h
//  Calculator
//
//  Created by JENNY MERO on 8/27/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
  int total;
  int mode;
  NSString *valueString;
  IBOutlet UILabel *label;
  BOOL lastButtonWasMode;
  
}

-(IBAction)tappedClear:(id)sender;
-(IBAction)tappedNumber:(UIButton *)btn;
-(IBAction)tappedPlus:(id)sender;
-(IBAction)tappedMinus:(id)sender;
-(IBAction)tappedEquals:(id)sender;
-(IBAction)tappedDivide:(id)sender;
-(IBAction)tappedMultiply:(id)sender;

@end


