//
//  GLConsultViewController.m
//  GLConsultModule
//
//  Created by guolei on 2019/1/3.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "GLConsultViewController.h"
#import "CTMediator+ConsultModule.h"
//#import <GLPatientModule/GLPatientModule.h>

@interface GLConsultViewController ()

@end

@implementation GLConsultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
//    self.title = @"会诊";
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100.0, 200.0, 150.0, 50.0);
    [btn setTitle:@"跳转消息模块" forState:UIControlStateNormal];
    btn.backgroundColor = UIColor.blueColor;
    [btn addTarget:self action:@selector(btnTouchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnTouchUpInside {
    UIViewController * messageVC = [CTMediator.sharedInstance consultModule_PatientViewControllerWithParams:@{@"title":@"从会诊模块跳转而来",@"hiddenTabBar":@YES} WithCallBack:^(NSString * result) {
        NSLog(@"%@",result);
    }];
    [self.navigationController pushViewController:messageVC animated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
