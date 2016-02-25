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

- (NSMutableArray<WEWeather *> *)weathers {
    if (!_weathers) {
        _weathers = [NSMutableArray array];
        
        // JSONから気象情報を取得する
        NSMutableArray<WEWeather *> *weathers = [NSMutableArray array];
        NSArray<NSURL *> *jsonURLs = [[NSBundle mainBundle] URLsForResourcesWithExtension:@"json" subdirectory:nil];
        for (NSURL *jsonURL in jsonURLs) {
            NSError *createError;
            NSData *jsonData = [NSData dataWithContentsOfURL:jsonURL options:0 error:&createError];
            
            NSError *serializeError;
            NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&serializeError];
            
            WEWeather *weather = [[WEWeather alloc] initWithDictionary:jsonDic];
            [weathers addObject:weather];
        }
        
        // 気象情報を地区ID順にソートする(linkの末尾が地区IDに当たる)
        NSSortDescriptor *areaSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"self.link" ascending:YES];
        _weathers = [[weathers sortedArrayUsingDescriptors:@[areaSortDescriptor]] mutableCopy];
    }
    return _weathers;
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
