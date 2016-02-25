//
//	WEWeather.h
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "WECopyright.h"
#import "WEDescription.h"
#import "WEForecast.h"
#import "WELocation.h"
#import "WEProvider.h"

@interface WEWeather : NSObject

@property (nonatomic, strong) WECopyright * copyright;
@property (nonatomic, strong) WEDescription * descriptionField;
@property (nonatomic, strong) NSArray * forecasts;
@property (nonatomic, strong) NSString * link;
@property (nonatomic, strong) WELocation * location;
@property (nonatomic, strong) NSArray * pinpointLocations;
@property (nonatomic, strong) NSString * publicTime;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end