//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommanAPI.h"
#import "ComposeMailWithScreenShotView.h"
@class ComposeMailWithScreenShotView;
@interface ViewController : UIViewController
{
    ComposeMailWithScreenShotView *objComposeMailWithScreenShotView;
}

-(IBAction)captureAndSend;
@property(nonatomic, retain)ComposeMailWithScreenShotView *objComposeMailWithScreenShotView;

@end
