//
//  CTMediator+ConsultModule.m
//  GLConsultModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator+ConsultModule.h"

@implementation CTMediator (ConsultModule)

-(UIViewController *)consultModule_PatientViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack
{
    NSMutableDictionary * mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callBack"] = callBack;
    
    return [self performTarget:@"MessageModule" action:@"MessageViewController" params:mutableParams shouldCacheTarget:NO];
}

@end
