//
//	WECopyright.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WECopyright.h"

@interface WECopyright ()
@end
@implementation WECopyright




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"image"] isKindOfClass:[NSNull class]]){
		self.image = [[WEImage alloc] initWithDictionary:dictionary[@"image"]];
	}

	if(![dictionary[@"link"] isKindOfClass:[NSNull class]]){
		self.link = dictionary[@"link"];
	}	
	if(dictionary[@"provider"] != nil && [dictionary[@"provider"] isKindOfClass:[NSArray class]]){
		NSArray * providerDictionaries = dictionary[@"provider"];
		NSMutableArray * providerItems = [NSMutableArray array];
		for(NSDictionary * providerDictionary in providerDictionaries){
			WEProvider * providerItem = [[WEProvider alloc] initWithDictionary:providerDictionary];
			[providerItems addObject:providerItem];
		}
		self.provider = providerItems;
	}
	if(![dictionary[@"title"] isKindOfClass:[NSNull class]]){
		self.title = dictionary[@"title"];
	}	
	return self;
}
@end