//
//  MainCollectionViewCell.m
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/02/24.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import "MainCollectionViewCell.h"

@interface MainCollectionViewCell ()

@end

@implementation MainCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)awaker {
    // Initialization code
    
    // 選択時の色を指定
    self.selectedBackgroundView = [UIView new];
    self.selectedBackgroundView.backgroundColor = self.tintColor;
}

@end
