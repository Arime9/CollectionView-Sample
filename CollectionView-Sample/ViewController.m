//
//  ViewController.m
//  CollectionView-Sample
//
//  Created by Arai on 2016/02/24.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    self.collectionView.vcDelegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // スクロールインジケータを光らせることで、スクロール可能なことを知らせる
    [self.collectionView flashScrollIndicators];
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
