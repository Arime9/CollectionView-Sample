//
//	WEProvider.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEProvider.h"

NSString *const kWEProviderLink = @"link";
NSString *const kWEProviderName = @"name";

@interface WEProvider ()
@end
@implementation WEProvider




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEProviderLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kWEProviderLink];
	}	
	if(![dictionary[kWEProviderName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kWEProviderName];
	}	
	return self;
}
@end