//
//  DetailViewController.h
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/03/23.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WEWeather.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) WEWeather *weather;

@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;

@end
