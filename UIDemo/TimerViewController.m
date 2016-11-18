//
//  TimerViewController.m
//  UIDemo
//
//  Created by Student-002 on 10/10/16.
//  Copyright © 2016 student 002. All rights reserved.
///

#import "TimerViewController.h"

@interface TimerViewController ()

@end
static int iCount=0;
@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
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
-(void)OnTick
{
    _display.text=[[NSString alloc] initWithFormat:@"%d",iCount];
    iCount++;
}
- (IBAction)btnclicked:(id)sender
{
    if(sender==_start)
    {
    _timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(OnTick) userInfo:nil repeats:YES];
    }
    else
    {
    if(_timer !=nil)
    {
        [_timer invalidate];
        _timer=nil;
    }
    }
   
}
@end
