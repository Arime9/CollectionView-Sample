//
//	WETemperature.h
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface WETemperature : NSObject

@property (nonatomic, strong) NSObject * max;
@property (nonatomic, strong) NSObject * min;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end