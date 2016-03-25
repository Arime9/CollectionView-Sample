//
//  MainCollectionViewCell.h
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/02/24.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *dateLabel;
@property (nonatomic, weak) IBOutlet UIImageView *weatherImageView;
@property (nonatomic, weak) IBOutlet UILabel *maxLabel;
@property (nonatomic, weak) IBOutlet UILabel *slashLabel;
@property (nonatomic, weak) IBOutlet UILabel *minLabel;

@end
