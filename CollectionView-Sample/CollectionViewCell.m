//
//  CollectionViewCell.m
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "CollectionViewCell.h"

@interface CollectionViewCell ()

@end

@implementation CollectionViewCell

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
