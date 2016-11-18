//
//  Cal1ViewController.m
//  UIDemo
//
//  Created by Student-002 on 30/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "Cal1ViewController.h"

@interface Cal1ViewController ()

@end

@implementation Cal1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor lightGrayColor];
    //********** Text fields ****************
    
    _firstf=[[UITextField alloc]initWithFrame:CGRectMake(20, 30, 120, 40)];
    _firstf.borderStyle=UITextBorderStyleRoundedRect;
    _firstf.returnKeyType=UIReturnKeyNext;
//    _firstp.keyboardType=UIKeyboardTypeNumberPad;
    _firstf.delegate=self;
    [self.view addSubview:_firstf];
    
    _secondtf=[[UITextField alloc]initWithFrame:CGRectMake(150, 30, 120, 40)];
    _secondtf.borderStyle=UITextBorderStyleRoundedRect;
    _secondtf.returnKeyType=UIReturnKeyDone;
//    _secondp.keyboardType=UIKeyboardTypeNumberPad;
    _secondtf.delegate=self;
    [self.view addSubview:_secondtf];
    
    //********** Button ****************
    
    _calculate=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [ _calculate setTitle:@"Calculate" forState:UIControlStateNormal];
    _calculate.frame=CGRectMake(280, 30, 100, 40);
    _calculate.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_calculate];
    [_calculate addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    //********** Table ****************

    _table=[[UITableView alloc]initWithFrame:CGRectMake(20, 100, 290, 320) style:UITableViewStylePlain];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
    _Con=[[NSMutableArray alloc]init];

    // Do any additional setup after loading the view.
}
//********** Text fields ****************

//********** Table ****************
//********** Table Row and section ****************

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Con.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

//********** Table  row title****************
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell1=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:nil];
    cell1.textLabel.text=[_Con objectAtIndex:indexPath.row];
    return cell1;
   
}

//********** Button ****************
-(void)btnclick: (id)btn
{
    [_Con removeAllObjects];
    int no1=[_firstf.text intValue];
    int no2=[_secondtf.text intValue];
    
    for(_i=1;_i<=no2;_i++)
    {
        NSString *r=[NSString stringWithFormat:@"%d*%d=%d",no1,_i,no1*_i];
        [_Con addObject:r];
    }
    [self.table reloadData];
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
