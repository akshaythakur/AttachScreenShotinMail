//
//  ComposeMailWithScreenShotView.m
//  AttachScreenShotInMail
//
//  Created by Akshay Thakur on 09/04/12.
//  Copyright (c) 2012 MyCompany. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface CommanAPI : NSObject {

}


//+ (UIViewController*)viewController:(UIView*)iView;

+ (UIImage*)makeScreenShot:(UIView*)iView;

+(float)degreesToRadian:(float)x;

@end
