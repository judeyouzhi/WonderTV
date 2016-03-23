//
//  WTVCollectionViewCell.m
//  WonderTV
//
//  Created by JudeYou on 9/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "EventCollectionViewCell.h"

@implementation EventCollectionViewCell

- (void)awakeFromNib {
    self.layer.cornerRadius = 5;
    self.label.text = @"影片名字";
}

#pragma mark - Actions Public

+ (NSString *)identifier {
    return @"cell";
}

@end
