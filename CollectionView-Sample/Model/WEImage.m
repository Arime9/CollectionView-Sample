//
//	WEImage.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEImage.h"

@interface WEImage ()
@end
@implementation WEImage




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"height"] isKindOfClass:[NSNull class]]){
		self.height = [dictionary[@"height"] integerValue];
	}

	if(![dictionary[@"link"] isKindOfClass:[NSNull class]]){
		self.link = dictionary[@"link"];
	}	
	if(![dictionary[@"title"] isKindOfClass:[NSNull class]]){
		self.title = dictionary[@"title"];
	}	
	if(![dictionary[@"url"] isKindOfClass:[NSNull class]]){
		self.url = dictionary[@"url"];
	}	
	if(![dictionary[@"width"] isKindOfClass:[NSNull class]]){
		self.width = [dictionary[@"width"] integerValue];
	}

	return self;
}
@end