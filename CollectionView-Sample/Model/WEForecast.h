//
//	WEForecast.h
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "WEImage.h"
#import "WETemperature.h"

@interface WEForecast : NSObject

@property (nonatomic, strong) NSString * date;
@property (nonatomic, strong) NSString * dateLabel;
@property (nonatomic, strong) WEImage * image;
@property (nonatomic, strong) NSString * telop;
@property (nonatomic, strong) WETemperature * temperature;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end