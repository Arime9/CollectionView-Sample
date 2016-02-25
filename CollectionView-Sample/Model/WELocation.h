//
//	WELocation.h
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface WELocation : NSObject

@property (nonatomic, strong) NSString * area;
@property (nonatomic, strong) NSString * city;
@property (nonatomic, strong) NSString * prefecture;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end