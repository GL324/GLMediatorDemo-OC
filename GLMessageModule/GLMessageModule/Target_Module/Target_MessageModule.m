//
//  Target_MessageModule.m
//  GLMessageModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Target_MessageModule.h"
#import "GLMessageViewController.h"

@implementation Target_MessageModule

-(UIViewController *)Action_MessageViewController:(NSDictionary *)params
{
    typedef void (^CallBackType)(NSString *);
    CallBackType callBack = params[@"callBack"];
    if (callBack) {
        callBack(@"success");
    }
    GLMessageViewController * messageVC = [[GLMessageViewController alloc] init];
    NSString * title = params[@"title"];
    BOOL hiddenTabBar = params[@"hiddenTabBar"];
    if (title) {
        messageVC.title = title;
    }
    if (hiddenTabBar) {
        messageVC.hidesBottomBarWhenPushed = hiddenTabBar;
    }
    return messageVC;
}

@end
