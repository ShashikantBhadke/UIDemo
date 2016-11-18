//
//  PickerViewController.m
//  UIDemo
//
//  Created by Student-002 on 27/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//
//
#import "PickerViewController.h"
#import "DateViewController.h"
#import "MyTableViewController.h"
#import "NewViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    _picker=[[UIPickerView alloc]initWithFrame:CGRectMake(30, 50, 320, 400)];
    _picker.delegate=self;
    _picker.dataSource=self;
    [self.view addSubview:_picker];
    // Do any additional setup after loading the view.
    
    
    //************** Label Useing Mutabel Array ****************
    
    _cityarray=[[NSMutableArray alloc]initWithObjects:@"Mumbai",@"Pune", @"Aurangabad", @"Delhi",@"Kolkata",@"Banglore", nil];
    _colorarray=[[NSMutableArray alloc]initWithObjects:@"Red",@"Green",@"Blue",@"White", nil];
    
    _lbl=[[UILabel alloc]initWithFrame:CGRectMake(40, 300, 230, 50)];
    [self.view addSubview:_lbl];
    
    //******Image in Picker********
    
    _img=[[NSMutableArray alloc]initWithObjects:@"1",@"2",@"4", nil];
    
    
    //10/10/2016
    //Navigation control
    self.navigationItem.title=@"2VC";
    UIBarButtonItem *r2btn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(r2btnclicked)];
    self.navigationItem.rightBarButtonItem=r2btn;
    
    
}
//10/10/2016
//Navigation control

-(void)r2btnclicked
{
    DateViewController *dvc=[[DateViewController alloc]init];
    [self.navigationController pushViewController:dvc animated:YES];
}

    //*************28/09/2016**********
//*********** Picker Row and Components no. *************
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
//    return 2;
    return 1;
}
-(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
//    if (component==0)
//        return _cityarray.count;
////    else if (component==1)
////        return 3;
//    else
//        return _colorarray.count;
    return _img.count;
    
}
//************** Label ****************

//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    if(component==0)
//        return [_cityarray objectAtIndex:row];
//    else
//        return [_colorarray objectAtIndex:row];
//
//}

//************** Label Useing Mutabel Array change background colour ****************

//-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
//{
//    int row1=[_picker selectedRowInComponent:0];
//    int row2=[_picker selectedRowInComponent:1];
//    _lbl.text=[NSString stringWithFormat:@"%@  %@",[_cityarray objectAtIndex:row1],[_colorarray objectAtIndex:row2]];
//    _lbl.textAlignment=NSTextAlignmentCenter;
//    switch (row2)
//    {
//        case 0:
//        _lbl.textColor=[UIColor redColor];
//        break;
//        case 1:
//        _lbl.textColor=[UIColor greenColor];
//        break;
//        case 2:
//        _lbl.textColor=[UIColor blueColor];
//        break;
//        default:
//        _lbl.textColor=[UIColor whiteColor];
//        break;
//    }
//    switch (row2)
//    {
//        case 0:
//            _lbl.backgroundColor=[UIColor redColor];
//            break;
//        case 1:
//            _lbl.backgroundColor=[UIColor greenColor];
//            break;
//        case 2:
//            _lbl.backgroundColor=[UIColor blueColor];
//            break;
//        default:
//            _lbl.backgroundColor=[UIColor whiteColor];
//            break;
//    }
//}

//*************** Picker Row hight contoller ***************

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 400;
}

//*************** Picker Component width contoller ***************

//-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
//{
//    if(component==0)
//    return 50;
//    else
//        return 270;
//}
//

//***********Without Array creating list of city & color in picker **************
////-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    if(component==0)
//       {
//           switch (row)
//           {
//               case 0:
//                   return @"Pune";
//                   break;
//                   
//               default:
//                   return @"Mumbai";
//                   break;
//       }
//       }

//    else
//    {
//        switch (row)
//        {
//            case 0:
//                return @"White";
//                break;
//            case 1:
//                return @"Red";
//                break;
//            default:
//                return @"Black";
//                break;
//        }
//    }
//return @"Test";
//}


//******Image in Picker********
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_img objectAtIndex:row]]];
    image.frame=CGRectMake(30, 50, 310, 380);
    return image;
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
