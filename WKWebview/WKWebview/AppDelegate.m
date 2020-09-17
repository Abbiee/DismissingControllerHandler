//
//  AppDelegate.m
//  WKWebview
//
//  Created by Abbie on 17/09/20.
//  Copyright © 2020 Abbie. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
{
    UIWindow *privacyProtectionWindow;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
     UIViewController *blankViewController = [UIViewController new];
     blankViewController.view.backgroundColor = [UIColor redColor];
    if (self.window == NULL) {
        return;
    }
    privacyProtectionWindow = [[UIWindow alloc] initWithFrame:self.window.frame];
    privacyProtectionWindow.rootViewController = blankViewController;
    privacyProtectionWindow.backgroundColor = [UIColor redColor];
    privacyProtectionWindow.windowLevel = UIWindowLevelAlert + 1;
    [privacyProtectionWindow makeKeyAndVisible];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    privacyProtectionWindow.hidden = true;
    privacyProtectionWindow = nil;
    
}

@end
