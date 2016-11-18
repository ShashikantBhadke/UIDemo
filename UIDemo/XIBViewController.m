//
//  XIBViewController.m
//  UIDemo
//
//  Created by Student-002 on 04/10/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "XIBViewController.h"

@interface XIBViewController ()

@end

@implementation XIBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // cell reuse purpose
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    
}
//*********** TAble View ****************
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell1=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    
    // uSing reuse cell we can write command is
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    

    cell.textLabel.text=@"table View";
    return cell;
}



//*********** Picker View ****************
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
return @"Picker View";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

/// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnclicked:(id)sender
{
//    _lbl1.text=@"Hii";
    _lbl1.text=_tf.text;
}
- (IBAction)sliderchange:(id)sender
{
    _slider.minimumValue=1;
    _slider.maximumValue=255;
//    [_slider setValue:100 animated:YES];
    _lbl1.backgroundColor=[UIColor colorWithWhite:_slider.value/255.0 alpha:1.0];
    _btn.backgroundColor=[UIColor colorWithWhite:_slider.value/255.0 alpha:1.0];
}
@end
