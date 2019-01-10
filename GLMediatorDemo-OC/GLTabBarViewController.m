//
//  GLTabBarViewController.m
//  GLMediatorDemo-OC
//
//  Created by guolei on 2019/1/3.
//  Copyright © 2019 guolei. All rights reserved.
//

#import "GLTabBarViewController.h"
#import "CTMediator+MainProject.h"

@interface GLTabBarViewController ()

@property(nonatomic, strong)NSMutableArray *registerViewControllers;

@end

@implementation GLTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
}

- (void)setupUI {
    UIViewController * consultVC = [CTMediator.sharedInstance mainProject_ConsultViewControllerWithParams:@{@"title":@"会诊"} WithCallBack:^(NSString * result) {
        NSLog(@"%@",result);
    }];
    [self glRegisterViewController:consultVC title:@"会诊" image:[UIImage imageNamed:@"menu_home_main_default"]];
    
    UIViewController * messageVC = [CTMediator.sharedInstance mainProject_MessageViewControllerWithParams:@{@"title":@"患者"} WithCallBack:^(NSString * result) {
        NSLog(@"%@",result);
    }];
    [self glRegisterViewController:messageVC title:@"消息" image:[UIImage imageNamed:@"menu_home_message_default"]];
    
    UIViewController * userVC = [CTMediator.sharedInstance mainProject_UserViewControllerWithParams:@{@"title":@"我的"} WithCallBack:^(NSString * result) {
        NSLog(@"%@",result);
    }];
    [self glRegisterViewController:userVC title:@"我的" image:[UIImage imageNamed:@"menu_home_me_default"]];
    
    self.viewControllers = self.registerViewControllers;
    
}

- (void)glRegisterViewController:(UIViewController *)vc title:(NSString *)title image:(UIImage *)image {
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = image;
    [self.registerViewControllers addObject:nav];
}

- (NSMutableArray *)registerViewControllers {
    if (_registerViewControllers == nil) {
        _registerViewControllers = [[NSMutableArray alloc] init];
    }
    return _registerViewControllers;
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
