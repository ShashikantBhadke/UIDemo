//
//  AppDelegate.m
//  UIDemo
//
//  Created by Student-002 on 20/09/16.
//  Copyright © 2016 student 002. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "NewViewController.h"
#import "PickerViewController.h"
#import "DateViewController.h"
#import "TableViewController.h"
#import "Cal1ViewController.h"
#import "Cal2ViewController.h"
#import "MyTableViewController.h"
#import "XIBViewController.h"
#import "TimerViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //20/09/2016
    //as window is for short time befor app strted (welcome window in short)
    _window=[[UIWindow alloc]init];
//    _window.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    //_window.frame=CGRectMake(150, 200, 110, 320);
    _window.frame=[UIScreen mainScreen].bounds;
//    LoginViewController *lvc=[[LoginViewController alloc]init];
//    self.window.rootViewController=lvc;
//    NewViewController *nvc=[[NewViewController alloc]init];
//    self.window.rootViewController=nvc;
//    PickerViewController *pvc=[[PickerViewController alloc]init];
//    self.window.rootViewController=pvc;
//    DateViewController *dvc=[[DateViewController alloc]init];
//    self.window.rootViewController=dvc;
//    TableViewController *tvc=[[TableViewController alloc]init];
//    self.window.rootViewController=tvc;
//    Cal1ViewController *c1vc=[[Cal1ViewController alloc]init];
//    self.window.rootViewController=c1vc;
//    Cal2ViewController *c2vc=[[Cal2ViewController alloc]init];
//    self.window.rootViewController=c2vc;
//    MyTableViewController *mtvc=[[MyTableViewController alloc]initWithStyle:UITableViewStylePlain];
//    self.window.rootViewController=mtvc;
//    XIBViewController *xvc=[[XIBViewController alloc]init];
//    self.window.rootViewController=xvc;
    //10/10/2016
    //Navigation control
    
//    UINavigationController *navigation =[[UINavigationController alloc]initWithRootViewController:lvc];
//        navigation.navigationBar.backgroundColor=[UIColor orangeColor];
//    self.window.rootViewController=navigation;
    
     TimerViewController *tvc=[[TimerViewController alloc]init];
        self.window.rootViewController=tvc;
    
    

    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
