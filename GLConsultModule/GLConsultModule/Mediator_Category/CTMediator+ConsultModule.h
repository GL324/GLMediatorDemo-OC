//
//  CTMediator+ConsultModule.h
//  GLConsultModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ConsultModule)

-(UIViewController *)consultModule_PatientViewControllerWithParams:(NSDictionary *)params WithCallBack:(void(^)(NSString *))callBack;

@end

NS_ASSUME_NONNULL_END
