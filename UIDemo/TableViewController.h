//
//  TableViewController.h
//  UIDemo
//
//  Created by Student-002 on 29/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, retain) UITableView *tabel;
@property (nonatomic, retain) NSMutableArray *cityarray, *colorarray,*imagearray;

@end
