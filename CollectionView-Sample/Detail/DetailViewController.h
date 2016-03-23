//
//  DetailViewController.h
//  CollectionView-Sample
//
//  Created by Arai on 2016/03/23.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WEWeather.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) WEWeather *weather;

@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;

@end
