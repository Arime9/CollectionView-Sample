//
//	WEWeather.m
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "WEWeather.h"

NSString *const kWEWeatherCopyright = @"copyright";
NSString *const kWEWeatherDescriptionField = @"description";
NSString *const kWEWeatherForecasts = @"forecasts";
NSString *const kWEWeatherLink = @"link";
NSString *const kWEWeatherLocation = @"location";
NSString *const kWEWeatherPinpointLocations = @"pinpointLocations";
NSString *const kWEWeatherPublicTime = @"publicTime";
NSString *const kWEWeatherTitle = @"title";

@interface WEWeather ()
@end
@implementation WEWeather




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kWEWeatherCopyright] isKindOfClass:[NSNull class]]){
		self.copyright = [[WECopyright alloc] initWithDictionary:dictionary[kWEWeatherCopyright]];
	}

	if(![dictionary[kWEWeatherDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = [[WEDescription alloc] initWithDictionary:dictionary[kWEWeatherDescriptionField]];
	}

	if(dictionary[kWEWeatherForecasts] != nil && [dictionary[kWEWeatherForecasts] isKindOfClass:[NSArray class]]){
		NSArray * forecastsDictionaries = dictionary[kWEWeatherForecasts];
		NSMutableArray * forecastsItems = [NSMutableArray array];
		for(NSDictionary * forecastsDictionary in forecastsDictionaries){
			WEForecast * forecastsItem = [[WEForecast alloc] initWithDictionary:forecastsDictionary];
			[forecastsItems addObject:forecastsItem];
		}
		self.forecasts = forecastsItems;
	}
	if(![dictionary[kWEWeatherLink] isKindOfClass:[NSNull class]]){
		self.link = dictionary[kWEWeatherLink];
	}	
	if(![dictionary[kWEWeatherLocation] isKindOfClass:[NSNull class]]){
		self.location = [[WELocation alloc] initWithDictionary:dictionary[kWEWeatherLocation]];
	}

	if(dictionary[kWEWeatherPinpointLocations] != nil && [dictionary[kWEWeatherPinpointLocations] isKindOfClass:[NSArray class]]){
		NSArray * pinpointLocationsDictionaries = dictionary[kWEWeatherPinpointLocations];
		NSMutableArray * pinpointLocationsItems = [NSMutableArray array];
		for(NSDictionary * pinpointLocationsDictionary in pinpointLocationsDictionaries){
			WEProvider * pinpointLocationsItem = [[WEProvider alloc] initWithDictionary:pinpointLocationsDictionary];
			[pinpointLocationsItems addObject:pinpointLocationsItem];
		}
		self.pinpointLocations = pinpointLocationsItems;
	}
	if(![dictionary[kWEWeatherPublicTime] isKindOfClass:[NSNull class]]){
		self.publicTime = dictionary[kWEWeatherPublicTime];
	}	
	if(![dictionary[kWEWeatherTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kWEWeatherTitle];
	}	
	return self;
}
@end