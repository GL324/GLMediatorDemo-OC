//
//  CTMediator+MessageModule.m
//  GLMessageModule
//
//  Created by guolei on 2019/1/10.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator+MessageModule.h"

@implementation CTMediator (MessageModule)

-(UIViewController *)messageModule_UserViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"UserModule" action:@"UserViewController" params:mutableParams shouldCacheTarget:NO];
}

@end
