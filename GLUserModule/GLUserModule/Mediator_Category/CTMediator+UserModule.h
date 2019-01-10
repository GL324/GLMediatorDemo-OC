//
//  CTMediator+UserModule.h
//  GLUserModule
//
//  Created by guolei on 2019/1/10.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (UserModule)

-(UIViewController *)userModule_ConsultViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

@end

NS_ASSUME_NONNULL_END
