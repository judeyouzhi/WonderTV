//
//  WTShimmer.m
//  WonderTV
//
//  Created by JudeYou on 23/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "WTShimmer.h"
#import <FBShimmeringView.h>


@implementation WTShimmer

+ (void) addShimmerForView:(id)view at:(CGRect) frame
{
    FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:frame];
    [view addSubview:shimmeringView];
    
    //    UILabel *loadingLabel = [[UILabel alloc] initWithFrame:frame];
    UILabel *loadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    loadingLabel.textAlignment = NSTextAlignmentLeft;
    loadingLabel.textColor = [UIColor orangeColor];
    loadingLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:24.0];
    loadingLabel.text = NSLocalizedString(@"WonderTV", nil);
    
    shimmeringView.contentView = loadingLabel;
    shimmeringView.shimmeringBeginFadeDuration = 0.5;
    // Start shimmering.
    shimmeringView.shimmering = YES;
}

@end
