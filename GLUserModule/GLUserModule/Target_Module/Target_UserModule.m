//
//  Target_UserModule.m
//  GLUserModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Target_UserModule.h"
#import "GLUserViewController.h"

@implementation Target_UserModule

-(UIViewController *)Action_UserViewController:(NSDictionary *)params
{
    typedef void (^CallBackType)(NSString *);
    CallBackType callBack = params[@"callBack"];
    if (callBack) {
        callBack(@"success");
    }
    
    GLUserViewController * userVC = [[GLUserViewController alloc] init];
    NSString * title = params[@"title"];
    if (title) {
        userVC.title = title;
    }
    BOOL hiddenTabBar = params[@"hiddenTabBar"];
    if (hiddenTabBar) {
        userVC.hidesBottomBarWhenPushed = hiddenTabBar;
    }
    return userVC;
}

@end
