//
//	WEImage.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEImage.h"

NSString *const kWEImageHeight = @"height";
NSString *const kWEImageLink = @"link";
NSString *const kWEImageTitle = @"title";
NSString *const kWEImageUrl = @"url";
NSString *const kWEImageWidth = @"width";

@interface WEImage ()
@end
@implementation WEImage




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEImageHeight] isKindOfClass:[NSNull class]]){
		self.height = [dictionary[kWEImageHeight] integerValue];
	}

	if(![dictionary[kWEImageLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kWEImageLink];
	}	
	if(![dictionary[kWEImageTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kWEImageTitle];
	}	
	if(![dictionary[kWEImageUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kWEImageUrl];
	}	
	if(![dictionary[kWEImageWidth] isKindOfClass:[NSNull class]]){
		self.width = [dictionary[kWEImageWidth] integerValue];
	}

	return self;
}
@end