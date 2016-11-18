//
//  NewViewController.m
//  UIDemo
//
//  Created by Student-002 on 27/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    //******View ******
    
    _view2=[[UIView alloc]initWithFrame:CGRectMake(50, 50, 300, 200)];
    _view2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:_view2];
    //******Sliders ******
    
    _redslider=[[UISlider alloc]initWithFrame:CGRectMake(20, 400, 250, 30)];
    _blueslider=[[UISlider alloc]initWithFrame:CGRectMake(20, 450, 250, 30)];
    _greenslider=[[UISlider alloc]initWithFrame:CGRectMake(20, 500, 250, 30)];
    _redslider.minimumValue=0;
    _redslider.maximumValue=255;
    _redslider.minimumTrackTintColor=[UIColor redColor];
    _blueslider.minimumValue=0;
    _blueslider.maximumValue=255;
    _blueslider.minimumTrackTintColor=[UIColor blueColor];
    _greenslider.minimumValue=0;
    _greenslider.maximumValue=255;
    _greenslider.minimumTrackTintColor=[UIColor greenColor];
    [_redslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    [_blueslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    [_greenslider addTarget:self action:@selector(sliderchange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_redslider];
    [self.view addSubview:_blueslider];
    [self.view addSubview:_greenslider];
}
-(void)sliderchange: (UISlider *)sender
{

    _view2.backgroundColor=[UIColor colorWithRed:_redslider.value/255.0 green:_greenslider.value/255.0 blue:_blueslider.value/255.0 alpha:1.0];
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
