//
//  JGMessageModel.m
//  jsonDemo2
//
//  Created by 张建国 on 16/2/19.
//  Copyright © 2016年 Barley. All rights reserved.
//

#import "JGMessageModel.h"

@implementation JGMessageModel

+(instancetype)modelWithDictionary:(NSDictionary *)dic
{
    JGMessageModel *model = [[JGMessageModel alloc]init];
    
    [model setValuesForKeysWithDictionary:dic];
    
    return model ;

}

-(NSString *)description
{

    return [NSString stringWithFormat:@"%@{messageid = %d,message = %@}",[super description],self.messageId.intValue,self.message];
}
@end
