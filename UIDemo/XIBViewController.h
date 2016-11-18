//
//  XIBViewController.h
//  UIDemo
//
//  Created by Student-002 on 04/10/16.
//  Copyright © 2016 student 002. All rights reserved.
///

#import <UIKit/UIKit.h>

@interface XIBViewController : UIViewController<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
- (IBAction)btnclicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)sliderchange:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *table;
@property (weak, nonatomic) IBOutlet UIPickerView *piker1;




@end
