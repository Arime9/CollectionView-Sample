//
//  MainCollectionView.h
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/02/24.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainCollectionReusableView.h"
#import "MainCollectionViewCell.h"
#import "WEWeather.h"

@interface MainCollectionView : UICollectionView

@property (nonatomic, weak) UIViewController *vcDelegate;
@property (nonatomic, strong, readonly) NSMutableArray<WEWeather *> *weathers;

@end
