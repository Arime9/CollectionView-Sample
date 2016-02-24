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
    self.selectedBackgroundView = [UIView new];
    self.selectedBackgroundView.backgroundColor = self.tintColor;
}

@end


@interface CollectionViewCellData ()

@end

@implementation CollectionViewCellData

- (instancetype)init {
    self = [super init];
    if (self) {
        _title = @"";
        _aCaption = @"";
        _bCaption = @"";
        _command = nil;
    }
    return self;
}

@end
