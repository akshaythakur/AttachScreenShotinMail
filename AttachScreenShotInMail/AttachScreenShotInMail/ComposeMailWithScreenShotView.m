//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//

#import "ComposeMailWithScreenShotView.h"
#import "ViewController.h"
#import "AppDelegate.h"
@implementation ComposeMailWithScreenShotView
@synthesize screenShotImage;


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

-(void)initView{
	
	self.backgroundColor = [UIColor clearColor];
    
	objMFMailComposeViewController = [[MFMailComposeViewController alloc] init];
	objMFMailComposeViewController.mailComposeDelegate = self;
	objMFMailComposeViewController.navigationItem.title = @"";
	
	NSData *photoData = UIImagePNGRepresentation(self.screenShotImage);
	[objMFMailComposeViewController addAttachmentData:photoData mimeType:@"image/png"fileName:[NSString stringWithFormat:@"attach.png"]];
	
    [self addSubview:objMFMailComposeViewController.view];
	
	AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[[appDelegate navigationController]presentModalViewController:objMFMailComposeViewController animated:YES];
	
    
}


-(void)mailComposeController:(MFMailComposeViewController*)controller 
		 didFinishWithResult:(MFMailComposeResult)result 
					   error:(NSError*)error {
	UIAlertView *alertView;
	switch (result) {
		case MFMailComposeResultSent:
			/*	email Sent	*/
			alertView = [[UIAlertView alloc]initWithTitle:@""
                                                  message:@"Email is sent successfully."
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
			alertView.tag = 1;
			alertView.delegate = self;
			[alertView show];
			alertView = nil;
			
			break;
		case MFMailComposeResultSaved:
			[objMFMailComposeViewController dismissModalViewControllerAnimated:YES];
						[self removeFromSuperview];
			
			break;
		case MFMailComposeResultCancelled:
			/*	email cancel	*/
			[objMFMailComposeViewController dismissModalViewControllerAnimated:YES];
						[self removeFromSuperview];
			break;
		case MFMailComposeResultFailed:
			/*	email failed	*/
			alertView = [[UIAlertView alloc]initWithTitle:@""
                                                  message:@"Failed to send email.\nbecause no network connection available."
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
			alertView.tag = 1;
			alertView.delegate = self;
			[alertView show];
			alertView = nil;
			
			break;
		default:
			break;
	}
	
}




@end
