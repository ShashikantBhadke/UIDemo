//
//  LoginViewController.m
//  UIDemo
//
//  Created by Student-002 on 20/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"
#import "DateViewController.h"
#import "MyTableViewController.h"
#import "NewViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor grayColor];
    //***** Image Handeling *********
    //27/09/2016
    
    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _actualimage=[UIImage imageNamed:@"4"];
    _container.image=_actualimage;
    [self.view addSubview:_container];
    
    //21/09/2016
//    _view1=[[UIView alloc]init];
//    _view1.backgroundColor=[UIColor greenColor];
//    _view1.frame=CGRectMake(50, 100, 100, 50);
//    [self.view addSubview: _view1];
//    _view2=[[UIView alloc]init];
//    _view2.backgroundColor=[UIColor whiteColor];
//    _view2.frame=CGRectMake(155, 100, 100, 50);
//    [self.view addSubview: _view2];
    _usernamelbl=[[UILabel alloc]initWithFrame:CGRectMake(50,100,200,50)];
    _usernamelbl.text=@"User Name:";
//    _usernamelbl.backgroundColor=[UIColor yellowColor];
//    _usernamelbl.textAlignment=NSTextAlignmentCenter;
//    _usernamelbl.textColor=[UIColor redColor];
//    _usernamelbl.font=[UIFont fontWithName:@"Times NEw Roman" size:30];
    [self.view addSubview:_usernamelbl];
    _passwordlbl=[[UILabel alloc]initWithFrame:CGRectMake(50,160,200,50)];
    _passwordlbl.text=@"Password:";
    [self.view addSubview:_passwordlbl];
    _usernametf=[[UITextField alloc]initWithFrame:CGRectMake(150, 100, 150,30)];
    _usernametf.borderStyle=UITextBorderStyleRoundedRect;
    //keyboard colour is dark
    _usernametf.keyboardAppearance=UIKeyboardAppearanceDark;
    //22/09/2016 start
//    _usernametf.keyboardType=UIKeyboardTypeEmailAddress;
//    _usernametf.keyboardType=UIKeyboardTypeDecimalPad;
//    _usernametf.keyboardType=UIKeyboardTypeNamePhonePad;
//    _usernametf.keyboardType=UIKeyboardTypeNumbersAndPunctuation;
//    _usernametf.keyboardType=UIKeyboardTypeTwitter;
    _usernametf.returnKeyType=UIReturnKeyNext;
//    _usernametf.returnKeyType=UIReturnKeyRoute;
//    _usernametf.returnKeyType=UIReturnKeySend;
//    _usernametf.returnKeyType=UIReturnKeyDone;
    _usernametf.delegate=self;
    //as control pass to view controler
    
    //22/09/2016 stop
    [self.view addSubview:_usernametf];
    _passwordtf=[[UITextField alloc]initWithFrame:CGRectMake(150, 160, 150, 30)];
    _passwordtf.borderStyle=UITextBorderStyleRoundedRect;
    _passwordtf.returnKeyType=UIReturnKeyDone;
    _passwordtf.secureTextEntry=YES;
    //secure password purpose
    _passwordtf.delegate=self;
    [self.view addSubview:_passwordtf];
//    _Shri=[[UILabel alloc]initWithFrame:CGRectMake(160, 40, 50, 50)];
//    _Shri.backgroundColor=[UIColor whiteColor];
//    _Shri.text=@"Shri";
//    _Shri.textAlignment=NSTextAlignmentCenter;
//    [self.view addSubview:_Shri];
    //Button Handling 22/09/2016
    
    _Loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _Loginbtn.frame=CGRectMake(70, 200, 100, 30);
    _Loginbtn.backgroundColor=[UIColor darkGrayColor];
    [_Loginbtn setTitle:@"Login" forState: UIControlStateNormal];
    [_Loginbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_Loginbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    [self.view addSubview:_Loginbtn];
    //Function of Login Button is as follows in that we need 3 parameter 1 where to call 2 fun where is defination i.e., what to do after touch and 3 is event after where to touch
//    [_Loginbtn addTarget:self action:@selector(loginbtnclick) forControlEvents:UIControlEventTouchUpInside];
    //23/09/2016
    [_Loginbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    _Canclebtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _Canclebtn.frame=CGRectMake(180, 200, 100, 30);
    _Canclebtn.backgroundColor=[UIColor darkGrayColor];
    [_Canclebtn setTitle:@"Cancle" forState:UIControlStateNormal];
    [_Canclebtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_Canclebtn setTitle:@"Wait" forState:UIControlStateHighlighted];
    [self.view addSubview:_Canclebtn];
//  [_Canclebtn addTarget:self action:@selector(canclebtnclick) forControlEvents:UIControlEventTouchUpInside];
    //23/09/2016
    [_Canclebtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    //***** Segment Control *********
    _segmentview=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Yellow", @"Blue",@"White", nil]];
    _segmentview.frame=CGRectMake(40, 300, 230, 50);
    _segmentview.tintColor=[UIColor lightGrayColor];
    [_segmentview addTarget:self action:@selector(segmentedchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segmentview];
    
    //***** Switch *********
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(100, 370, 30, 30)];
    [_switch1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switch1];
    
    //***** Slider *********
    _slider=[[UISlider alloc]initWithFrame:CGRectMake(20, 400, 250, 30)];
    _slider.minimumTrackTintColor=[UIColor yellowColor];
    //Left side color of slider is changed to yellow
    _slider.maximumTrackTintColor=[UIColor brownColor];
    //Right side color of slider is changed to black
    _slider.minimumValue=1;
    _slider.maximumValue=100;
    [_slider setValue:30 animated:YES];
    [_slider addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
    
    //***** Image Handeling *********
    //27/09/2016
    
//    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    _actualimage=[UIImage imageNamed:@"4"];
//    _container.image=_actualimage;
//    [self.view addSubview:_container];
    //try to use it at start because compiler exicute from top to bottom so layer are formed. And use can't view image on main screen So that we have to use container
  
    
    //10/10/2016
    //Navigation control
    self.navigationItem.title=@"1VC";
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rbtnclicked)];
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
    
}
//10/10/2016
//Navigation control

-(void)rbtnclicked
{
    PickerViewController *pvc=[[PickerViewController alloc]init];
    [self.navigationController pushViewController:pvc animated:YES];
}


//***** Image Handeling *********
//27/09/2016



//23/09/2016
//***** Slider *********
-(void)sliderchange
{
    NSLog(@"%f Roundoff Value= %.f",_slider.value,_slider.value);
}


//***** Switch *********
-(void)switchchange
{
if(_switch1.on)
    NSLog(@"On");
else
    NSLog(@"Off");
}

//***** Segment Control *********
-(void)segmentedchange
{
    switch (_segmentview.selectedSegmentIndex)
    {
        case 0:
            self.view.backgroundColor=[UIColor yellowColor];
            break;
        case 1:
            self.view.backgroundColor=[UIColor blueColor];
            break;
        default:
            self.view.backgroundColor=[UIColor whiteColor];
            break;
    }
}
//***** Button Singel function for Login and Cancle too*********
-(void)btnclick: (id)sender
{
if(sender==_Loginbtn)
{
    self.view.backgroundColor=[UIColor greenColor];
    if([_usernametf.text isEqualToString:_passwordtf.text])
        NSLog(@"Strings are equal");
    else
        NSLog(@"Not Equal");
}
else

    self.view.backgroundColor=[UIColor redColor];
}
//22/09/2016 Button fun's
//-(void)loginbtnclick
//{
//    NSLog(@"Login Button Click");
//}
//-(void)canclebtnclick
//{
//    
//    NSLog(@"Cancle Button Click");
//}
//22/09/2016 test field fun
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"Should Begin");
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"DID Begin");
    
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"Should End");
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"Did End");
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
//For Next /Done/.... butoon control handel purpose
{
if(textField==_usernametf)
    [_passwordtf becomeFirstResponder];
    //Jump from usertf to password tf when next key word is click on user tf keyboard
    else
        [_passwordtf resignFirstResponder];
        //Hide the keyboard
    return YES;
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
