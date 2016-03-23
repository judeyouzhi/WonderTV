//
//  WTVCollectionViewCell.h
//  WonderTV
//
//  Created by JudeYou on 9/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


+ (NSString *)identifier;

@end
