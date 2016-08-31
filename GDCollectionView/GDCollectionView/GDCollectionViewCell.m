//
//  GDCollectionViewCell.m
//  GDCollectionView
//
//  Created by Taoge on 16/8/31.
//  Copyright © 2016年 adan. All rights reserved.
//

#import "GDCollectionViewCell.h"

@implementation GDCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setAllViews];
    }
    return self;
}

- (void)setAllViews {
    self.image = [[UIImageView alloc] initWithFrame:self.bounds];
    [self addSubview:self.image];
}

@end
