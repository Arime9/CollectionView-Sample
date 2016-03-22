//
//	WELocation.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WELocation.h"

NSString *const kWELocationArea = @"area";
NSString *const kWELocationCity = @"city";
NSString *const kWELocationPrefecture = @"prefecture";

@interface WELocation ()
@end
@implementation WELocation




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWELocationArea] isKindOfClass:[NSNull class]]){
		self.area = dictionary[kWELocationArea];
	}	
	if(![dictionary[kWELocationCity] isKindOfClass:[NSNull class]]){
		self.city = dictionary[kWELocationCity];
	}	
	if(![dictionary[kWELocationPrefecture] isKindOfClass:[NSNull class]]){
		self.prefecture = dictionary[kWELocationPrefecture];
	}	
	return self;
}
@end