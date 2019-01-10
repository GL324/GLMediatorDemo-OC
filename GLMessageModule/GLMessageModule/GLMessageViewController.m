//
//  GLMessageViewController.m
//  GLMessageModule
//
//  Created by guolei on 2019/1/9.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "GLMessageViewController.h"
#import "CTMediator+MessageModule.h"

@interface GLMessageViewController ()

@end

@implementation GLMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100.0, 200.0, 150.0, 50.0)];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnTpuchUpinside) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"跳转我的模块" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}


-(void)btnTpuchUpinside {
    UIViewController * userVC = [CTMediator.sharedInstance messageModule_UserViewControllerWithParams:@{@"title":@"我的",@"hiddenTabBar":@YES} WithCallBack:^(NSString * result) {
        NSLog(@"%@",result);
    }];
    [self.navigationController pushViewController:userVC animated:YES];
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
