//
//  ViewController.h
//  AOCweek3
//
//  Created by Janis Jae on 9/12/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (int) add:(int)number1 with:(int)number2;
- (BOOL) compare:(NSInteger)value1 with:(NSInteger)value2;
- (NSString*) append:(NSString*)string1 with:(NSString*)string2;
- (void) displayAlertWithString:(NSString*)string;

@end
