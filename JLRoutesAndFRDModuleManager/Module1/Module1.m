//
//  Module1.m
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "Module1.h"
#import "yellowViewController.h"

@implementation Module1
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
    //注册跳转到yellow控制器
    [[JLRoutes globalRoutes] addRoute:@"/pushToyellow" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        UIViewController *vc = parameters[@"vc"];
        yellowViewController *yellow = [[yellowViewController alloc] init];
        [vc.navigationController pushViewController:yellow animated:YES];
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
