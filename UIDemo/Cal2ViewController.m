//
//  Cal2ViewController.m
//  UIDemo
//
//  Created by Student-002 on 03/10/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "Cal2ViewController.h"

@interface Cal2ViewController ()

@end

@implementation Cal2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    //*******table*********
    _table=[[UITableView alloc]initWithFrame:CGRectMake(50, 30, 290, 320) style:UITableViewStylePlain];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
    //*******btn*********
    _Add=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [ _Add setTitle:@"Add" forState:UIControlStateNormal];
    _Add.frame=CGRectMake(130, 390, 70, 40);
    _Add.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_Add];
    [_Add addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    //*******array*********
    
    _array2=[[NSMutableArray alloc]init];
    
}
    //*******btn*********
-(void)btnclick
{
    //******* Alert ***********
// /   UIAlertView *alert1= [[UIAlertView alloc]initWithTitle:@"Alert" message:nil delegate:self cancelButtonTitle:@"Cancle" otherButtonTitles:@"Ok", nil];
    UIAlertView *alert1=[[UIAlertView alloc]init];
    alert1.delegate=self;
    [alert1 setTitle:@"Enter value"];
    [alert1 addButtonWithTitle:@"Add"];
    [alert1 addButtonWithTitle:@"Cancle"];
    alert1.alertViewStyle=UIAlertViewStylePlainTextInput;
    [alert1 show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    UITextField *tf=[alertView textFieldAtIndex:0];
    NSString *str=tf.text;
    [_array2 addObject:str];
    [self.table reloadData];
    
}
//*******table*********
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array2.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewStylePlain reuseIdentifier:nil];
    cell.textLabel.text=[_array2 objectAtIndex:indexPath.row];
    return cell;
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
