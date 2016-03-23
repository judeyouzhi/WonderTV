//
//  NewsTableViewCell.h
//  WonderTV
//
//  Created by JudeYou on 18/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UILabel *detail;

+ (NSString *)identifier;

@end
