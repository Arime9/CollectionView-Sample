//
//	WECopyright.h
//
//	Create by Arai on 25/2/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "WEImage.h"
#import "WEProvider.h"

@interface WECopyright : NSObject

@property (nonatomic, strong) WEImage * image;
@property (nonatomic, strong) NSString * link;
@property (nonatomic, strong) NSArray * provider;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end