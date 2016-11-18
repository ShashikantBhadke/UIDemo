//
//  Cal2ViewController.h
//  UIDemo
//
//  Created by Student-002 on 03/10/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cal2ViewController : UIViewController<UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate,UIAlertViewDelegate>
@property (nonatomic,retain) UITextField *tf;
@property (nonatomic,retain) UIButton *Add;
@property (nonatomic,retain) UITableView *table;
@property (nonatomic,retain) NSMutableArray *array2;
@end
