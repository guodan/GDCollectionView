//
//  AppDelegate.h
//  GDCollectionView
//
//  Created by Taoge on 16/8/31.
//  Copyright © 2016年 adan. All rights reserved.
//

#import "SixImageLayout.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kCellSize (kScreenWidth-2)/3.0

@implementation SixImageLayout

- (instancetype)init
{
    self = [super init];
    if (self) {
        //暂时为空
    }
    return self;
}

- (void)prepareLayout {
    [super prepareLayout];
}

- (CGSize)collectionViewContentSize {
    CGSize size = CGSizeMake(self.collectionView.frame.size.width, self.collectionView.frame.size.height);
    return size;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    self.cellCount = 6;
    NSMutableArray *attributes = [NSMutableArray array];
    for (NSInteger i = 0; i < self.cellCount; i ++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        UICollectionViewLayoutAttributes *attrs = [self layoutAttributesForItemAtIndexPath:indexPath];
        [attributes addObject:attrs];
    }
    return attributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    attributes.size = CGSizeMake(kCellSize, kCellSize);
    if (indexPath.row == 0) {
        attributes.size = CGSizeMake(kCellSize*2+1, kCellSize*2+1);
        attributes.center = CGPointMake((kCellSize*2+1)/2, (kCellSize*2+1)/2);
    }
    else if (indexPath.row == 1) {
        attributes.center = CGPointMake(kCellSize*2+2+kCellSize/2, kCellSize/2);
    } else if(indexPath.row == 2) {
        attributes.center = CGPointMake(kCellSize*2+2+kCellSize/2, kCellSize+kCellSize/2+1);
    }else if (indexPath.row == 3) {
        attributes.center = CGPointMake(kCellSize/2, kCellSize*2+2+kCellSize/2);
    } else if(indexPath.row == 4) {
        attributes.center = CGPointMake(kCellSize+kCellSize/2+1, kCellSize*2+2+kCellSize/2);
    } else {
        attributes.center = CGPointMake(kCellSize*2+2+kCellSize/2, kCellSize*2+2+kCellSize/2);
    }
    return attributes;
}
//显示的边界改变时就重新布局，调用-rect方法，
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}

@end
