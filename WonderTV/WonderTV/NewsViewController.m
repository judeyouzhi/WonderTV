//
//  SecondViewController.m
//  WonderTV
//
//  Created by JudeYou on 8/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import <UIImageView+WebCache.h>
#import "NewsViewController.h"
#import "NewsTableViewCell.h"
#import "NewsDetailViewController.h"
#import "WTShimmer.h"

@interface NewsViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *table;
@property NSMutableArray *weburls;

@property NSMutableArray *data;
@property NSMutableArray *imageurls;
@property NSString *currentWebUrl;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[NSMutableArray alloc] init];
    [self.data addObject:@"MISA夏季音乐节"];
    [self.data addObject:@"和孩子们一起木刻版画"];
    [self.data addObject:@"葡萄酒品尝波尔多体验"];
    [self.data addObject:@"千岛湖滑翔伞翱翔天空"];
    [self.data addObject:@"缤纷多彩的下午茶"];
    [self.data addObject:@"扬帆浦江和孩子们一起饱览浦江之夜"];
    [self.data addObject:@"巧克力麦芬烘培体验"];
    [self.data addObject:@"葡萄酒品尝波尔多体验"];
    [self.data addObject:@"三亚湾观光直升机驾驶飞行体验"];
    [self.data addObject:@"夏日来袭，美食亲子趴"];
    [self.data addObject:@"MISA夏季音乐节"];
    [self.data addObject:@"和孩子们一起木刻版画"];
    [self.data addObject:@"葡萄酒品尝波尔多体验"];
    [self.data addObject:@"千岛湖滑翔伞翱翔天空"];
    [self.data addObject:@"缤纷多彩的下午茶"];
    [self.data addObject:@"扬帆浦江和孩子们一起饱览浦江之夜"];
    [self.data addObject:@"巧克力麦芬烘培体验"];
    [self.data addObject:@"葡萄酒品尝波尔多体验"];
    [self.data addObject:@"三亚湾观光直升机驾驶飞行体验"];
    [self.data addObject:@"夏日来袭，美食亲子趴"];
    self.imageurls = [[NSMutableArray alloc] init];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b11.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b21.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b31.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b41.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b51.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b61.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b71.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b81.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b91.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b101.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b11.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b21.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b31.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b41.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b51.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b61.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b71.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b81.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b91.jpg"];
    [self.imageurls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b101.jpg"];
    self.weburls = [[NSMutableArray alloc] init];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3566&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3616&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3770&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3567&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3805&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3759&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3655&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3770&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3693&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3761&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3566&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3616&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3770&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3567&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3805&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3759&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3655&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3770&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3693&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    [self.weburls addObject:@"http://www.yhouse.com/?r=app/event&id=3761&userInfoId=EKZ1AQNjZQLmBJ9bJD&versions=1.7.1"];
    _table.delegate = self;
    _table.dataSource = self;

    [self.table registerNib:[UINib nibWithNibName:@"NewsTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:[NewsTableViewCell identifier]];
    [WTShimmer addShimmerForView:self.navigationController.navigationBar
                              at:CGRectMake(20, 0, self.view.bounds.size.width-20, self.navigationController.navigationBar.frame.size.height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.data count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsTableViewCell *newscell = [tableView dequeueReusableCellWithIdentifier:[NewsTableViewCell identifier] forIndexPath:indexPath];
    NSString *imageUrlString = [self.imageurls objectAtIndex:indexPath.row];
    [newscell.image sd_setImageWithURL:[NSURL URLWithString:imageUrlString] placeholderImage:[UIImage imageNamed:@"i5.png"]];
    newscell.title.text = [self.data objectAtIndex:indexPath.row];
    newscell.detail.text = @"If you’re out in the sun all day, you better be prepared. Learn how to talk about it in English in this episode.";
    self.currentWebUrl = [self.weburls objectAtIndex:indexPath.row];
    
    return newscell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NewsDetailViewController *detailNewsViewController = [[NewsDetailViewController alloc] init];
    detailNewsViewController.detailWebUrl = self.currentWebUrl;
    [self presentViewController:detailNewsViewController animated:YES completion:nil];
}

@end
