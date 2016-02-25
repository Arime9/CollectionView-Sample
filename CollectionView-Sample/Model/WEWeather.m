//
//	WEWeather.m
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEWeather.h"

@interface WEWeather ()
@end
@implementation WEWeather




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"copyright"] isKindOfClass:[NSNull class]]){
		self.copyright = [[WECopyright alloc] initWithDictionary:dictionary[@"copyright"]];
	}

	if(![dictionary[@"description"] isKindOfClass:[NSNull class]]){
		self.descriptionField = [[WEDescription alloc] initWithDictionary:dictionary[@"description"]];
	}

	if(dictionary[@"forecasts"] != nil && [dictionary[@"forecasts"] isKindOfClass:[NSArray class]]){
		NSArray * forecastsDictionaries = dictionary[@"forecasts"];
		NSMutableArray * forecastsItems = [NSMutableArray array];
		for(NSDictionary * forecastsDictionary in forecastsDictionaries){
			WEForecast * forecastsItem = [[WEForecast alloc] initWithDictionary:forecastsDictionary];
			[forecastsItems addObject:forecastsItem];
		}
		self.forecasts = forecastsItems;
	}
	if(![dictionary[@"link"] isKindOfClass:[NSNull class]]){
		self.link = dictionary[@"link"];
	}	
	if(![dictionary[@"location"] isKindOfClass:[NSNull class]]){
		self.location = [[WELocation alloc] initWithDictionary:dictionary[@"location"]];
	}

	if(dictionary[@"pinpointLocations"] != nil && [dictionary[@"pinpointLocations"] isKindOfClass:[NSArray class]]){
		NSArray * pinpointLocationsDictionaries = dictionary[@"pinpointLocations"];
		NSMutableArray * pinpointLocationsItems = [NSMutableArray array];
		for(NSDictionary * pinpointLocationsDictionary in pinpointLocationsDictionaries){
			WEProvider * pinpointLocationsItem = [[WEProvider alloc] initWithDictionary:pinpointLocationsDictionary];
			[pinpointLocationsItems addObject:pinpointLocationsItem];
		}
		self.pinpointLocations = pinpointLocationsItems;
	}
	if(![dictionary[@"publicTime"] isKindOfClass:[NSNull class]]){
		self.publicTime = dictionary[@"publicTime"];
	}	
	if(![dictionary[@"title"] isKindOfClass:[NSNull class]]){
		self.title = dictionary[@"title"];
	}	
	return self;
}
@end