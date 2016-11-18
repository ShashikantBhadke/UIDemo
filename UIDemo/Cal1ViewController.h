//
//  Cal1ViewController.h
//  UIDemo
//
//  Created by Student-002 on 30/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cal1ViewController : UIViewController<UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>

@property UITextField *firstf, *secondtf;
@property UIButton *calculate;
@property UITableView *table;
@property NSMutableArray *Con;
@property int t1, t2, i;
@end
