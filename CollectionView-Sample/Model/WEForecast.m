//
//	WEForecast.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEForecast.h"

@interface WEForecast ()
@end
@implementation WEForecast




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"date"] isKindOfClass:[NSNull class]]){
		self.date = dictionary[@"date"];
	}	
	if(![dictionary[@"dateLabel"] isKindOfClass:[NSNull class]]){
		self.dateLabel = dictionary[@"dateLabel"];
	}	
	if(![dictionary[@"image"] isKindOfClass:[NSNull class]]){
		self.image = [[WEImage alloc] initWithDictionary:dictionary[@"image"]];
	}

	if(![dictionary[@"telop"] isKindOfClass:[NSNull class]]){
		self.telop = dictionary[@"telop"];
	}	
	if(![dictionary[@"temperature"] isKindOfClass:[NSNull class]]){
		self.temperature = [[WETemperature alloc] initWithDictionary:dictionary[@"temperature"]];
	}

	return self;
}
@end