//
//  DetailEventViewController.m
//  WonderTV
//
//  Created by JudeYou on 16/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "DetailEventViewController.h"
#import <UIImageView+WebCache.h>


@interface DetailEventViewController ()


@end

@implementation DetailEventViewController

- (void)awakeFromNib {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:self.imageUrl] placeholderImage:[UIImage imageNamed:@"i5.png"]];

    NSMutableURLRequest * request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:self.detailWebUrl]];
//    NSMutableURLRequest * request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://judeyou.com/2015/06/01/the-best-of-whats-new-in-swift/"]];
    [self.web loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
