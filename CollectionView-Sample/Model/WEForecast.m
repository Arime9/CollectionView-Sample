//
//	WEForecast.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEForecast.h"

NSString *const kWEForecastDate = @"date";
NSString *const kWEForecastDateLabel = @"dateLabel";
NSString *const kWEForecastImage = @"image";
NSString *const kWEForecastTelop = @"telop";
NSString *const kWEForecastTemperature = @"temperature";

@interface WEForecast ()
@end
@implementation WEForecast




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEForecastDate] isKindOfClass:[NSNull class]]){
		self.date = dictionary[kWEForecastDate];
	}	
	if(![dictionary[kWEForecastDateLabel] isKindOfClass:[NSNull class]]){
		self.dateLabel = dictionary[kWEForecastDateLabel];
	}	
	if(![dictionary[kWEForecastImage] isKindOfClass:[NSNull class]]){
		self.image = [[WEImage alloc] initWithDictionary:dictionary[kWEForecastImage]];
	}

	if(![dictionary[kWEForecastTelop] isKindOfClass:[NSNull class]]){
		self.telop = dictionary[kWEForecastTelop];
	}	
	if(![dictionary[kWEForecastTemperature] isKindOfClass:[NSNull class]]){
		self.temperature = [[WETemperature alloc] initWithDictionary:dictionary[kWEForecastTemperature]];
	}

	return self;
}
@end