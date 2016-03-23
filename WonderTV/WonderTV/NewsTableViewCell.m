//
//  NewsTableViewCell.m
//  WonderTV
//
//  Created by JudeYou on 18/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "NewsTableViewCell.h"
#import <Masonry.h>

@interface NewsTableViewCell ()

@end

@implementation NewsTableViewCell

- (void)awakeFromNib {
    self.title.textColor = [UIColor blueColor];
    self.detail.textColor = [UIColor lightGrayColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

-(void)layoutSubviews
{
    [super layoutSubviews];
}

#pragma mark - Actions Public

+ (NSString *)identifier {
    return @"newscell";
}
@end
