//
//  CTMediator+MessageModule.h
//  GLMessageModule
//
//  Created by guolei on 2019/1/10.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MessageModule)

-(UIViewController *)messageModule_UserViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

@end

NS_ASSUME_NONNULL_END
