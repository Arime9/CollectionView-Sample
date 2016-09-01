//
//  MainViewController.m
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/02/24.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)awaker {
    // Initialization code
    self.title = @"コレクションビューサンプル";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 画面遷移に使用
    self.collectionView.vcDelegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // スクロールインジケータを光らせることで、スクロール可能なことを知らせる
    [self.collectionView flashScrollIndicators];
    
    
    /**
     * アイテムの選択解除
     *
     * UICollectionViewDelegate > collectionView:didSelectItemAtIndexPath: でなく、
     * ここで処理を行うと、視覚的に伝わり易くなる
     */
    for (NSIndexPath *indexPath in self.collectionView.indexPathsForSelectedItems) {
        [self.collectionView deselectItemAtIndexPath:indexPath animated:YES];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
}

@end
