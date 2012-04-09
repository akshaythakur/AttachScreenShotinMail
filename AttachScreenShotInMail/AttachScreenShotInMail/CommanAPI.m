//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//


#import "CommanAPI.h"
#import <QuartzCore/QuartzCore.h>

@implementation CommanAPI

+ (UIViewController*)viewController:(UIView*)iView{
	for (UIView* next = [iView superview]; next; next = next.superview) {
		UIResponder* nextResponder = [next nextResponder];
		if ([nextResponder isKindOfClass:[UIViewController class]]) {
			return (UIViewController*)nextResponder;
		}
	}
	return nil;
}



+(UIImage*)makeScreenShot:(UIView*)iView{
	UIGraphicsBeginImageContext(iView.frame.size);
	[iView.layer renderInContext:UIGraphicsGetCurrentContext()];

    UIImage *tmpImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return tmpImage;
}


+(float)degreesToRadian:(float)x{
	return (M_PI * (x) / 180.0);
}


@end
