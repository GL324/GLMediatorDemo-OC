//
//  CTMediator+MainProject.h
//  GLMediatorDemo-OC
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MainProject)

-(UIViewController *)mainProject_ConsultViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

-(UIViewController *)mainProject_MessageViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

-(UIViewController *)mainProject_UserViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

@end

NS_ASSUME_NONNULL_END
