//
//  DetailViewController.m
//  CollectionView-Sample
//
//  Created by masato_arai on 2016/03/23.
//  Copyright (c) 2016年 Tea and Coffee. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)awaker {
    // Initialization code
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.weather.title;
    self.descriptionLabel.text = self.weather.descriptionField.text;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
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
