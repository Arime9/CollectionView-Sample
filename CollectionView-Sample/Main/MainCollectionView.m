//
//  MainCollectionView.m
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/02/24.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import "MainCollectionView.h"
#import "DetailViewController.h"

@interface MainCollectionView () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong, readwrite) NSMutableArray<WEWeather *> *weathers;

@end

@implementation MainCollectionView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)awaker {
    // Initialization code
    self.dataSource = self;
    self.delegate = self;
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

#pragma mark
#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.weathers.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    WEWeather *weather = self.weathers[section];
    return weather.forecasts.count;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    WEWeather *weather = self.weathers[section];
    
    MainCollectionReusableView *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"MainCollectionReusableView" forIndexPath:indexPath];
    reusableView.titleLabel.text = weather.title;
    return reusableView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    WEWeather *weather = self.weathers[section];
    WEForecast *forecast = weather.forecasts[row];
    
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainCollectionViewCell" forIndexPath:indexPath];
    cell.dateLabel.text = forecast.dateLabel;
    cell.weatherImageView.image = [UIImage imageNamed:forecast.image.url.lastPathComponent];
    cell.maxLabel.text = [forecast.temperature.max.celsius stringByAppendingString:@"°C"];
    cell.slashLabel.text = @"/";
    cell.minLabel.text = [forecast.temperature.min.celsius stringByAppendingString:@"°C"];
    return cell;
}

#pragma mark
#pragma mark UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    WEWeather *weather = self.weathers[section];
    
    // 詳細画面へ遷移する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Detail" bundle:nil];
    DetailViewController *vc = [storyboard instantiateInitialViewController];
    vc.weather = weather;
    [self.vcDelegate.navigationController pushViewController:vc animated:YES];
}

@end
