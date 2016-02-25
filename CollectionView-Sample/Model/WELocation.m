//
//	WELocation.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WELocation.h"

@interface WELocation ()
@end
@implementation WELocation




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"area"] isKindOfClass:[NSNull class]]){
		self.area = dictionary[@"area"];
	}	
	if(![dictionary[@"city"] isKindOfClass:[NSNull class]]){
		self.city = dictionary[@"city"];
	}	
	if(![dictionary[@"prefecture"] isKindOfClass:[NSNull class]]){
		self.prefecture = dictionary[@"prefecture"];
	}	
	return self;
}
@end