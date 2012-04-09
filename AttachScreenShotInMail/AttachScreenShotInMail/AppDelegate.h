//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//


#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    ViewController *viewController;
    UINavigationController *navigationController;

}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) IBOutlet UINavigationController *navigationController;

@end
