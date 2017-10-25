//
//  Module3.m
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "Module3.h"
#import "greenViewController.h"

@implementation Module3
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@  Timeline", NSStringFromSelector(_cmd));
    [[JLRoutes globalRoutes] addRoute:@"/pushTogreen" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        UIViewController *vc = parameters[@"vc"];
        greenViewController *green = [[greenViewController alloc] init];
        green.greenblock = parameters[@"block"];
        [vc.navigationController pushViewController:green animated:YES];
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
