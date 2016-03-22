//
//	WEDescription.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEDescription.h"

NSString *const kWEDescriptionPublicTime = @"publicTime";
NSString *const kWEDescriptionText = @"text";

@interface WEDescription ()
@end
@implementation WEDescription




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEDescriptionPublicTime] isKindOfClass:[NSNull class]]){
		self.publicTime = dictionary[kWEDescriptionPublicTime];
	}	
	if(![dictionary[kWEDescriptionText] isKindOfClass:[NSNull class]]){
		self.text = dictionary[kWEDescriptionText];
	}	
	return self;
}
@end