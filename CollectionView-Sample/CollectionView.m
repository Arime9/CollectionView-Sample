//
//  CollectionView.m
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "CollectionView.h"

@interface CollectionView () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation CollectionView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)awaker {
    // Initialization code
    self.dataSource = self;
    self.delegate = self;
}

- (NSMutableArray<CollectionReusableViewData *> *)headersData {
    if (!_headersData) {
        _headersData = [NSMutableArray array];
        
        {
            CollectionReusableViewData *data = [CollectionReusableViewData new];
            data.title = @"This is Header";
            [_headersData addObject:data];
        }
    }
    return _headersData;
}

- (NSMutableArray<NSMutableArray<CollectionViewCellData *> *> *)cellsData {
    if (!_cellsData) {
        _cellsData = [NSMutableArray array];
        
        // This is Header
        {
            NSMutableArray *section = [NSMutableArray array];
            {
                CollectionViewCellData *data = [CollectionViewCellData new];
                data.title = @"COUNT UP";
                data.command = ^{
                    
                };
                [section addObject:data];
            }
            {
                CollectionViewCellData *data = [CollectionViewCellData new];
                data.title = @"COUNT DOWN";
                data.command = ^{
                    
                };
                [section addObject:data];
            }
            [_cellsData addObject:section];
        }
    }
    return _cellsData;
}

#pragma - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.headersData.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.cellsData[section].count;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    
    CollectionReusableView *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"CollectionReusableView" forIndexPath:indexPath];
    CollectionReusableViewData *data = self.headersData[section];
    reusableView.titleLabel.text = data.title;
    return reusableView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    CollectionViewCellData *data = self.cellsData[section][row];
    cell.titleLabel.text = data.title;
    cell.aCaptionLabel.text = data.aCaption;
    cell.bCaptionLabel.text = data.bCaption;
    return cell;
}

#pragma - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    CollectionViewCellData *data = self.cellsData[section][row];
    data.command();
}

@end
