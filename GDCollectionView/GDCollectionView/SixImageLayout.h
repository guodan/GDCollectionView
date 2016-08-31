//
//  AppDelegate.h
//  GDCollectionView
//
//  Created by Taoge on 16/8/31.
//  Copyright © 2016年 adan. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kCellSize (kScreenWidth-2)/3.0


@interface SixImageLayout : UICollectionViewLayout

@property(nonatomic,assign)NSInteger cellCount;
@end
