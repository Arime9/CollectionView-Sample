//
//  CollectionReusableView.h
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionReusableView : UICollectionReusableView

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

@end


@interface CollectionReusableViewData : NSObject

@property (nonatomic, strong) NSString *title;

@end
