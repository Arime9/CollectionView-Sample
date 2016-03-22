//
//	WEMax.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEMax.h"

NSString *const kWEMaxCelsius = @"celsius";
NSString *const kWEMaxFahrenheit = @"fahrenheit";

@interface WEMax ()
@end
@implementation WEMax




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEMaxCelsius] isKindOfClass:[NSNull class]]){
		self.celsius = dictionary[kWEMaxCelsius];
	}	
	if(![dictionary[kWEMaxFahrenheit] isKindOfClass:[NSNull class]]){
		self.fahrenheit = dictionary[kWEMaxFahrenheit];
	}	
	return self;
}
@end