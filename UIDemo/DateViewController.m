//
//  DateViewController.m
//  UIDemo
//
//  Created by Student-002 on 29/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "DateViewController.h"
#import "MyTableViewController.h"
#import "NewViewController.h"
#import "TableViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //  *************29/09/2016**********
    // *********** Date Picker **************
    self.view.backgroundColor=[UIColor whiteColor];
    _datepicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 50, 320, 250)];
    // Change Date format
    _datepicker.datePickerMode=UIDatePickerModeDate;
//    _datepicker.datePickerMode=UIDatePickerModeDateAndTime;
//    _datepicker.datePickerMode=UIDatePickerModeTime;
    [_datepicker addTarget:self action:@selector(dateselected) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_datepicker];
    
    
    
    //10/10/2016
    //Navigation control
    self.navigationItem.title=@"3C";
    UIBarButtonItem *r3btn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(r3btnclicked)];
    self.navigationItem.rightBarButtonItem=r3btn;
}

//10/10/2016
//Navigation control

-(void)r3btnclicked
{
    TableViewController *tvc=[[TableViewController alloc]init];
    [self.navigationController pushViewController:tvc animated:YES];
}



-(void)dateselected
{
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    [format setDateFormat:@"dd-MM-YYYY   hh-mm-a"];
    //to set date format dd- for date (if we use DD then it gives no. of days from 1st jan) MM- for month mm- minutes YYYY-year like 2016( YY- 16 )  hh- hours & a -am or pm purpose
    NSString *result =[format stringFromDate:[_datepicker date]];
    // to change it from date to string
    //[format dateFromString: (nonnull NSString *)];
    NSLog(@"%@",result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
