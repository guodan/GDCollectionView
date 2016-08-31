//
//  ViewController.m
//  GDCollectionView
//
//  Created by Taoge on 16/8/31.
//  Copyright © 2016年 adan. All rights reserved.
//

#import "ViewController.h"
#import "SixImageLayout.h"
#import "GDCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>
@property(nonatomic, strong) UICollectionView *collectionV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    SixImageLayout *sixLayout = [[SixImageLayout alloc] init];
    self.collectionV = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 110, kScreenWidth, kScreenWidth) collectionViewLayout:sixLayout];
    [self.view addSubview:self.collectionV];
    self.collectionV.delegate = self;
    self.collectionV.dataSource = self;
    [self.collectionV registerClass:[GDCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.collectionV reloadData];
}

- (NSInteger )collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    GDCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.image.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpeg",indexPath.item]];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
