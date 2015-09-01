//
//  ViewController.m
//  Calculator
//
//  Created by JENNY MERO on 8/27/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

//Create an iPhone calculator application similar to the calculator app that is found on your smart phone. Your calculator should have buttons to add, subtract, multiply and divide numbers. The app should also have a clear and equal button.

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  valueString = @" ";
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(IBAction)tappedClear:(id)sender
{
  
  //Reset all the values to 0
  total=0; //resets all the values
  valueString = @""; //an empty string
  label.text =@"0";
  mode = 0;
  
  
}


-(IBAction)tappedNumber:(UIButton *)btn
{
  int num = (int)btn.tag;
  //If everything is 0, then don't run this code
  if (num ==0 && total == 0) {
    return;  //means stop running this function
  }
  //Clears screen when you click another number
  if (lastButtonWasMode) {
    lastButtonWasMode = NO;
    valueString = @" ";
  }
  
  //Turn variable into a string
  NSString *numAsString = [NSString stringWithFormat:@"%i", num];
  valueString = [valueString stringByAppendingString: numAsString];
  //update the label
  label.text = valueString;
  //Prevents 000000s from piling up
  if (total ==0) {
    total = [valueString intValue]; //Takes value inside the string and converts to an integer
    
  }
}


-(IBAction)tappedPlus:(id)sender
{
  [self setMode:1];
}


-(IBAction)tappedMinus:(id)sender
{
  [self setMode: -1];
}


-(IBAction)tappedEquals:(id)sender
{
  if (mode == 0) {
    return;           //Return stops a function
  }
  
  if (mode ==1) {
    total += [valueString intValue];
  }
  
  if (mode ==-1) {
    total -= [valueString intValue];
  }
  
  if (mode ==*2 {
    total *= [valueString intValue];
  }
      
  valueString = [NSString stringWithFormat:@"%i", total];
  label.text = valueString;
  mode = 0;
}


-(IBAction)tappedDivide:(id)sender
{
  
}


-(IBAction)tappedMultiply:(id)sender
{
  [self setMode:2];
}

-(void)setMode:(int)m
{
  if (total == 0) {
    return;
  }
  mode = m;
  lastButtonWasMode = YES;
  total = [valueString intValue];
}

@end
