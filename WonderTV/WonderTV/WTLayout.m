//
//  WTLayout.m
//  WonderTV
//
//  Created by JudeYou on 8/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "WTLayout.h"
#import "Global.h"
@interface WTLayout()
{
    CGFloat previousOffset;
}

@end

@implementation WTLayout

- (void)prepareLayout {
    [super prepareLayout];
    [self setupLayout];
}


- (void)setupLayout
{
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionView.pagingEnabled  = NO;
}


@end
