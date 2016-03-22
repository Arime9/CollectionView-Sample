//
//	WEMax.h
//
//	Create by Arai on 22/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface WEMax : NSObject

@property (nonatomic, strong) NSString * celsius;
@property (nonatomic, strong) NSString * fahrenheit;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end