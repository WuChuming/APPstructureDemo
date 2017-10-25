
//
//  Module2.m
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "Module2.h"
#import "redViewController.h"

@implementation Module2
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
    //注册跳转到yellow控制器
    [[JLRoutes globalRoutes] addRoute:@"/pushTored/:name" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        UIViewController *vc = parameters[@"vc"];
        redViewController *red = [[redViewController alloc] init];
        red.name = parameters[@"name"];
        red.age = parameters[@"age"];
        [vc.navigationController pushViewController:red animated:YES];
        return YES;
    }];
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler;
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
}
@end
