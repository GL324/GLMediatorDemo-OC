//
//  CTMediator+MainProject.m
//  GLMediatorDemo-OC
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator+MainProject.h"

@implementation CTMediator (MainProject)

-(UIViewController *)mainProject_ConsultViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"ConsultModule" action:@"ConsultViewController" params:params shouldCacheTarget:NO];
}

-(UIViewController *)mainProject_MessageViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"MessageModule" action:@"MessageViewController" params:params shouldCacheTarget:NO];
    
}

-(UIViewController *)mainProject_UserViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"UserModule" action:@"UserViewController" params:params shouldCacheTarget:NO];
}

@end
