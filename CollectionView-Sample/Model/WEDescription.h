//
//	WEDescription.h
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface WEDescription : NSObject

@property (nonatomic, strong) NSString * publicTime;
@property (nonatomic, strong) NSString * text;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end