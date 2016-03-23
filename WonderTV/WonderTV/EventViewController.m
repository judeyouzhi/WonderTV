//
//  FirstViewController.m
//  WonderTV
//
//  Created by JudeYou on 8/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#import "EventViewController.h"
#import "EventCollectionViewCell.h"
#import <UIImageView+WebCache.h>
#import "Global.h"
#import "DetailEventViewController.h"
#import "WTShimmer.h"


@interface EventViewController ()  <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>


@property (weak, nonatomic) IBOutlet UICollectionView *collection;

@property NSMutableArray *data;
@property NSMutableArray *urls;
@property NSMutableArray *weburls;

@property NSString *currentUrl;
@property NSString *currentName;
@property NSString *currentWebUrl;

@end

@implementation EventViewController

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
    self.urls = [[NSMutableArray alloc] init];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b1.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b2.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b3.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b4.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b5.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b6.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b7.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b8.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b9.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b10.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b1.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b2.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b3.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b4.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b5.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b6.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b7.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b8.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b9.jpg"];
    [self.urls addObject:@"http://judeyou.com/wp-content/uploads/2015/07/b10.jpg"];
    
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
    
    
    [self.collection registerNib:[UINib nibWithNibName:@"EventCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:[EventCollectionViewCell identifier]];
    [self.collection setBackgroundColor:[UIColor whiteColor]];
    self.currentUrl = @"";
    self.currentName = @"";
    self.currentWebUrl = @"";
    _collection.delegate = self;
    _collection.dataSource = self;
    
    [WTShimmer addShimmerForView:self.navigationController.navigationBar
                              at:CGRectMake(20, 0, self.view.bounds.size.width-20, self.navigationController.navigationBar.frame.size.height)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Data Source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_data count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    EventCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[EventCollectionViewCell identifier] forIndexPath:indexPath];
    
    NSString *imageUrlString = [self.urls objectAtIndex:indexPath.row];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:imageUrlString] placeholderImage:[UIImage imageNamed:@"i5.png"]];
    cell.imageView.contentMode = UIViewContentModeScaleToFill;
    
    cell.backgroundColor = [UIColor whiteColor];
    cell.label.text = [self.data objectAtIndex:indexPath.row];
    
    self.currentName = cell.label.text;
    self.currentUrl = imageUrlString;
    self.currentWebUrl = [self.weburls objectAtIndex:indexPath.row];
    
    return cell;
}


#pragma mark - View delegate


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = SCREEN_WIDTH-4;
    CGFloat hight = (width/64)*33;
    return CGSizeMake(width, hight);
    
}

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 2, 0, 2);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section;
{
    return 1.5f;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 1.5f;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DetailEventViewController *detailEventViewController = [[DetailEventViewController alloc] init];
    detailEventViewController.imageUrl = self.currentUrl;
    detailEventViewController.detailWebUrl = self.currentWebUrl;
    [self presentViewController:detailEventViewController animated:YES completion:nil];
}


@end
