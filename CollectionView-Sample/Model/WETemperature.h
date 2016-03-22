//
//	WETemperature.h
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "WEMax.h"
#import "WEMax.h"

@interface WETemperature : NSObject

@property (nonatomic, strong) WEMax * max;
@property (nonatomic, strong) WEMax * min;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end