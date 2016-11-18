//
//  TableViewController.m
//  UIDemo
//
//  Created by Student-002 on 29/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "TableViewController.h"
#import "MyTableViewController.h"
#import "NewViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //  *************29/09/2016**********
    // *********** Tabel View **************
    _tabel=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped ];
    //UITableViewStylePlain also avaible
    _tabel.delegate=self;
    _tabel.dataSource=self;
    [self.view addSubview:_tabel];
    
    //  ************30/09/2016**********
    _cityarray=[[NSMutableArray alloc]initWithArray:[NSArray arrayWithObjects:@"Pune",@"Nagpur",@"Hydrabad",@"Delhi",nil]];
    _colorarray=[[NSMutableArray alloc]initWithArray:[NSArray arrayWithObjects:@"White",@"Blue",@"Black",@"Green",@"Red",nil]];
    _imagearray=[[NSMutableArray alloc]initWithObjects:@"1",@"2",@"4", nil];
    
    
    
        //  ************04/10/2016**********
    //From MyTableViewController class
//    [self.tabel registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    
    
    //10/10/2016
    //Navigation control
    self.navigationItem.title=@"4VC";
    UIBarButtonItem *r4btn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(r4btnclicked)];
    self.navigationItem.rightBarButtonItem=r4btn;
}
//10/10/2016
//Navigation control

-(void)r4btnclicked
{
    MyTableViewController *mtvc=[[MyTableViewController alloc]init];
    [self.navigationController pushViewController:mtvc animated:YES];
}


//********NO. of sections is optional By default it takes 1 section********
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
//********NO. of row must be define ********
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
if(section==0)
//    return 3;
    return _cityarray.count;
else
//    return 3;
    return _colorarray.count;
}
//********title image main textfield********
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
//
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
//
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:nil];
    
    
        //From MyTableViewController class
    //  ************04/10/2016**********
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //  ************30/09/2016**********
    if(indexPath.section==0)
    {
        cell.textLabel.text=[_cityarray objectAtIndex:indexPath.row];
        cell.imageView.image=[UIImage imageNamed:@"1"];
//        cell.imageView.image=[UIImage imageNamed:[_imagearray objectAtIndex:indexPath.row]];
        
        cell.accessoryType=UITableViewCellAccessoryCheckmark;
//        cell.accessoryType=UITableViewCellAccessoryDetailButton;
//        cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
//        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }
    else
    {
        cell.textLabel.text=[_colorarray objectAtIndex:indexPath.row];
        cell.imageView.image=[UIImage imageNamed:@"4"];
//        cell.imageView.image=[UIImage imageNamed:[_imagearray objectAtIndex:indexPath.row]];
        
        UISwitch *swt=[[UISwitch alloc]init];
        cell.accessoryView=swt;
//        [swt addTarget:self action:@selector(switchedchange:) forControlEvents:UIControlEventValueChanged];
    }
//    cell.imageView.image=[UIImage imageNamed:@"2"];
//    cell.textLabel.text=@"Text";
//    cell.detailTextLabel.text=@"Details text";
    return cell;
}
//-(void)switchedchange: (id)switchc
//{
//    NSLog(@"Colour Swt changed");
//    
//}

//********** Alert Popup  window purpose ************
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//if(indexPath.section==0)
//{
//    NSString *tempcityname=[_cityarray objectAtIndex:indexPath.row];
//    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:tempcityname message:@"Selected City" delegate:self cancelButtonTitle:@"Cancle" otherButtonTitles:@"OK", nil];
//    [alert show];
//}
//    else
//    {
//        NSString *tempcolor=[_colorarray objectAtIndex:indexPath.row];
//        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:tempcolor message:@"Selected Color" delegate:self cancelButtonTitle:@"Cancle" otherButtonTitles:@"OK", nil];
//        [alert show];
//    }
//}
//************* Title for Header and footer ************
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
if(section==0)
    return @"This is end of City array";
else
    return @"This is end of Color array";
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section==0)
        return @"This is of City array";
    else
        return @"This is of Color array";
}

//************* Add image at Header and segment controller at footer ************
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1"]];
        return i;
    }
    else
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4"]];
        return i;
    }
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"A",@"B",@"C", nil]];
    return seg;
}

//************* Header & Footer Hight and row hight too ************

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 100;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 150;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
    
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
