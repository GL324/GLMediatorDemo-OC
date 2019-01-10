//
//  CTMediator+UserModule.m
//  GLUserModule
//
//  Created by guolei on 2019/1/10.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator+UserModule.h"

@implementation CTMediator (UserModule)

-(UIViewController *)userModule_ConsultViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"ConsultModule" action:@"ConsultViewController" params:mutableParams shouldCacheTarget:NO];
}

@end
