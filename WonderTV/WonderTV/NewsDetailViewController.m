//
//  NewsDetailViewController.m
//  WonderTV
//
//  Created by JudeYou on 18/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "NewsDetailViewController.h"
#import "WTShimmer.h"

@interface NewsDetailViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *web;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollingview;
@property (weak, nonatomic) IBOutlet UIButton *topbar;


@end

@implementation NewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableURLRequest * request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:self.detailWebUrl]];
//        NSMutableURLRequest * request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://judeyou.com/2015/06/01/the-best-of-whats-new-in-swift/"]];
    
    [self.web loadRequest:request];
    NSLog(@"%f, %f, %f, %f", self.topbar.frame.origin.x, self.topbar.frame.origin.y, self.topbar.frame.size.width, self.topbar.frame.size.height);
    [WTShimmer addShimmerForView:self.topbar
                              at:CGRectMake([UIScreen mainScreen].bounds.size.width-120, 30, 375, 50)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
