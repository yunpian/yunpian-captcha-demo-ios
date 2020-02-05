//
//  AppDelegate.m
//  YPVerifyDemo
//
//  Created by daizq on 2019/4/22.
//  Copyright © 2019 QiPeng. All rights reserved.
//

#import "AppDelegate.h"
#import <YPCaptchaSDK/YPCaptchaSDK.h>
#import <Bugly/Bugly.h>

#define kYPAppId @"bbfe3828b1ce4c00b9d75760b435386d" // 滑块
//#define kYPAppId @"1127059d7b3e49b09ade1d8b70101fa0" // 图标
//#define kYPAppId @"e43691fb09844d7c8d429c79e7417cef" // 文字

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BuglyConfig *config = [BuglyConfig new];
    config.consolelogEnable = YES;
    config.debugMode = YES;
//    [Bugly startWithAppId:@"6c37fe248b" developmentDevice:YES config:config];
    //无感验证 0b98f20a6cb24ec0909433f938006d5b
    [YPCaptchaSDK startWithCaptchaId:@"0b98f20a6cb24ec0909433f938006d5b"];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
