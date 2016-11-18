//
//  PickerViewController.h
//  UIDemo
//
//  Created by Student-002 on 27/09/16.
//  Copyright © 2016 student 002. All rights reserved.
///

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (nonatomic, retain) UIPickerView *picker;
@property (nonatomic, retain) NSMutableArray *cityarray, *colorarray,*img;
@property (nonatomic, retain) UILabel *lbl;
@end
