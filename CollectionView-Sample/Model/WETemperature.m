//
//	WETemperature.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WETemperature.h"

@interface WETemperature ()
@end
@implementation WETemperature




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"max"] isKindOfClass:[NSNull class]]){
		self.max = dictionary[@"max"];
	}	
	if(![dictionary[@"min"] isKindOfClass:[NSNull class]]){
		self.min = dictionary[@"min"];
	}	
	return self;
}
@end