//
//  ViewController.m
//  AOCweek3
//
//  Created by Janis Jae on 9/12/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //define variables
    int number1 = 8;
    int number2 = 12;

    
    // Call the Add function passing in two integer values. Capture the return of this function into a variable.
    
    int sum = [self add:(int) number1 with:(int) number2];
    
    // Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    // Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSNumber *numberSum = [[NSNumber alloc] initWithInt:sum];
    NSString *numberText = [NSString stringWithFormat:@"The number is "];
    NSString *numberToString = [numberSum stringValue];
    NSString *mySumString = [self append:numberText with:numberToString];
    [self displayAlertWithString:mySumString];
    
        
        // Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
        
        NSInteger value1 = 8;
        NSInteger value2 = 12;
        
        BOOL compareNumbers = [self compare:value1 with:value2];
        NSString *myCompareString = [NSString stringWithFormat:@"Are the numbers %d and %d the same? %@", value1, value2, compareNumbers?@"YES" : @"NO"];
        [self displayAlertWithString:myCompareString]; //displays
        
        // Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
        
        NSString *myAppendString = [self append:@"Jae " with:@"Rowe"];
        [self displayAlertWithString:myAppendString]; //displays Jae Rowe as appended string in alert
        

    
        [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

    //(Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.)
    
    //ADD function takes two int types and returns the sum
    -(int)add:(int)number1 with:(int)number2{  //adds 2 int values
        return number1 + number2;  //returns their sum
    }
//Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.

//COMPARE function taking two NSInteger values and returns YES if they are equal and NO if they are not.
-(BOOL)compare:(NSInteger)value1 with:(NSInteger)value2{
    if (value1 == value2) {  // compares
        return YES;  // returns YES if equal
    }else{
        return NO;  // returns NO if not equal
    }
}

//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

//APPEND function taking two NSStrings and returning new appended strings using NSMutableString and the Append method

-(NSString *)append:(NSString *)string1 with:(NSString *)string2{  //appending two strings
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;  // returning the appended strings
}

// Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
// Take the passed in NSString and display it in the alert view
//Create an UIAlertView


-(void)displayAlertWithString:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"This is My Alert"  //Main alert message
                                                    message:string // current message 
                                                   delegate:nil
                                          cancelButtonTitle:@"Dismiss" //Dismiss button
                                          otherButtonTitles:nil]; 
    [alert show];  //displays passed in NSString as an alert
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
