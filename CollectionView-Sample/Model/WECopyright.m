//
//	WECopyright.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WECopyright.h"

NSString *const kWECopyrightImage = @"image";
NSString *const kWECopyrightLink = @"link";
NSString *const kWECopyrightProvider = @"provider";
NSString *const kWECopyrightTitle = @"title";

@interface WECopyright ()
@end
@implementation WECopyright




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWECopyrightImage] isKindOfClass:[NSNull class]]){
		self.image = [[WEImage alloc] initWithDictionary:dictionary[kWECopyrightImage]];
	}

	if(![dictionary[kWECopyrightLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kWECopyrightLink];
	}	
	if(dictionary[kWECopyrightProvider] != nil && [dictionary[kWECopyrightProvider] isKindOfClass:[NSArray class]]){
		NSArray * providerDictionaries = dictionary[kWECopyrightProvider];
		NSMutableArray * providerItems = [NSMutableArray array];
		for(NSDictionary * providerDictionary in providerDictionaries){
			WEProvider * providerItem = [[WEProvider alloc] initWithDictionary:providerDictionary];
			[providerItems addObject:providerItem];
		}
		self.provider = providerItems;
	}
	if(![dictionary[kWECopyrightTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kWECopyrightTitle];
	}	
	return self;
}
@end