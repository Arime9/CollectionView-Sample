//
//  CollectionViewCell.h
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *aCaptionLabel;
@property (nonatomic, weak) IBOutlet UILabel *bCaptionLabel;

@end


@interface CollectionViewCellData : NSObject

typedef void(^Command)();

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *aCaption;
@property (nonatomic, strong) NSString *bCaption;
@property (nonatomic, copy) Command command;

@end
