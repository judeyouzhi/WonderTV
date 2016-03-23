//
//  DetailEventViewController.h
//  WonderTV
//
//  Created by JudeYou on 16/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailEventViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;
@property (weak, nonatomic) IBOutlet UIWebView *web;


@property NSString *imageUrl;
@property NSString *detailWebUrl;

@end
