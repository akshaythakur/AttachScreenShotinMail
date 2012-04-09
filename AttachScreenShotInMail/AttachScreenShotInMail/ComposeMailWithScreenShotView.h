//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
@interface ComposeMailWithScreenShotView : UIView<MFMailComposeViewControllerDelegate> 
{
    UIImage *screenShotImage;
	MFMailComposeViewController *objMFMailComposeViewController;
}

@property(nonatomic, retain)UIImage *screenShotImage;

-(void)initView;

@end
