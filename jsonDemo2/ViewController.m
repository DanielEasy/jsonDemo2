//
//  ViewController.m
//  jsonDemo2
//
//  Created by  1 on 16/2/19.
//  Copyright © 2016年 Barley. All rights reserved.
//

#import "ViewController.h"
#import "JGMessageModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self getJSON];
}

-(void)getJSON
{
    NSURL * url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        
        //判断连接是否错误
        if (connectionError) {
            
            NSLog(@"连接错误");
        }
        
        NSHTTPURLResponse * httpResponse =(NSHTTPURLResponse *) response;
        
        //判断服务器是否出错
        if (httpResponse.statusCode == 200 || httpResponse.statusCode ==304) {
            
            //解析数据
            
            id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            JGMessageModel * model = [JGMessageModel modelWithDictionary:result];
            
            NSLog(@"%@",model);
            
            
        }else{
            NSLog( @"服务器内部错误");
        }
    } ];

}

@end
