//
//  CollectionView.m
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "CollectionView.h"

@interface CollectionView () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong, readwrite) NSMutableArray<WEWeather *> *weathers;

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
        NSSortDescriptor *citySortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"self.link" ascending:YES];
        _weathers = [[weathers sortedArrayUsingDescriptors:@[citySortDescriptor]] mutableCopy];
    }
    return _weathers;
}

#pragma - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.weathers.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    WEWeather *weather = self.weathers[section];
    return weather.forecasts.count;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    
    CollectionReusableView *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"CollectionReusableView" forIndexPath:indexPath];
    WEWeather *weather = self.weathers[section];
    reusableView.titleLabel.text = weather.title;
    return reusableView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    WEWeather *weather = self.weathers[section];
    WEForecast *forecast = weather.forecasts[row];
    cell.titleLabel.text = forecast.telop;
    cell.aCaptionLabel.text = forecast.temperature.max.celsius;
    cell.bCaptionLabel.text = forecast.temperature.min.celsius;
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
