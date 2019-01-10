//
//  Target_ConsultModule.m
//  GLConsultModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "Target_ConsultModule.h"
#import "GLConsultViewController.h"

@implementation Target_ConsultModule

-(UIViewController *)Action_ConsultViewController:(NSDictionary *)params
{
    typedef void (^CallBackType)(NSString *);
    CallBackType callBack = params[@"callBack"];
    if (callBack) {
        callBack(@"success");
    }
    GLConsultViewController * consultVC = [[GLConsultViewController alloc] init];
    NSString * title = params[@"title"];
    if (title) {
        consultVC.title = title;
    }
    BOOL hiddenTabBar = params[@"hiddenTabBar"];
    if (hiddenTabBar) {
        consultVC.hidesBottomBarWhenPushed = hiddenTabBar;
    }
    return consultVC;
}

@end
