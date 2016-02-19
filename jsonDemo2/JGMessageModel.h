//
//  JGMessageModel.h
//  jsonDemo2
//
//  Created by 张建国 on 16/2/19.
//  Copyright © 2016年 Barley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JGMessageModel : NSObject

@property(nonatomic,copy)NSNumber * messageId ;
@property(nonatomic,copy)NSString * message ;

+(instancetype)modelWithDictionary:(NSDictionary *)dic ;

@end
