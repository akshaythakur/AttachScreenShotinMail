//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "ComposeMailWithScreenShotView.h"
@implementation ViewController
@synthesize objComposeMailWithScreenShotView;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}



-(IBAction)captureAndSend
{
	self.objComposeMailWithScreenShotView = [[ComposeMailWithScreenShotView alloc]initWithFrame:CGRectMake(0.0,0.0, 320.0, 480.0)];
	self.objComposeMailWithScreenShotView.screenShotImage = [[UIImage alloc]initWithCGImage:[[CommanAPI makeScreenShot:self.view] CGImage]];
	[self.objComposeMailWithScreenShotView initView];
	[self.view addSubview:self.objComposeMailWithScreenShotView];
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
