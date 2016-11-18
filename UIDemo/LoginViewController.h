//
//  LoginViewController.h
//  UIDemo
//
//  Created by Student-002 on 20/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>
//UIText field deligate protocol is to be conformed before use 
@property (nonatomic, retain) UIView *view1, *view2;
@property (nonatomic, retain) UILabel *usernamelbl, *passwordlbl, *Shri;
@property (nonatomic, retain) UITextField *usernametf, *passwordtf;
@property (nonatomic, retain) UIButton *Loginbtn,*Canclebtn;
@property (nonatomic, retain) UISegmentedControl *segmentview;
@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UISlider *slider;
@property (nonatomic, retain) UIImageView *container;
@property (nonatomic, retain) UIImage *actualimage;
@end
