//
//	WEDescription.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEDescription.h"

@interface WEDescription ()
@end
@implementation WEDescription




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"publicTime"] isKindOfClass:[NSNull class]]){
		self.publicTime = dictionary[@"publicTime"];
	}	
	if(![dictionary[@"text"] isKindOfClass:[NSNull class]]){
		self.text = dictionary[@"text"];
	}	
	return self;
}
@end