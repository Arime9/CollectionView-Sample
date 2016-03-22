//
//	WETemperature.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WETemperature.h"

NSString *const kWETemperatureMax = @"max";
NSString *const kWETemperatureMin = @"min";

@interface WETemperature ()
@end
@implementation WETemperature




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWETemperatureMax] isKindOfClass:[NSNull class]]){
		self.max = [[WEMax alloc] initWithDictionary:dictionary[kWETemperatureMax]];
	}

	if(![dictionary[kWETemperatureMin] isKindOfClass:[NSNull class]]){
		self.min = [[WEMax alloc] initWithDictionary:dictionary[kWETemperatureMin]];
	}

	return self;
}
@end