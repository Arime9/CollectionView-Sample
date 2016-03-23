//
//  MainCollectionView.h
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainCollectionReusableView.h"
#import "MainCollectionViewCell.h"
#import "WEWeather.h"

@interface MainCollectionView : UICollectionView

@property (nonatomic, weak) UIViewController *vcDelegate;
@property (nonatomic, strong, readonly) NSMutableArray<WEWeather *> *weathers;

@end
