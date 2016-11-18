//
//  TimerViewController.h
//  UIDemo
//
//  Created by Student-002 on 10/10/16.
//  Copyright © 2016 student 002. All rights reserved.
///

#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *stop;
- (IBAction)btnclicked:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *display;
@property NSTimer *timer;
@end
