//
//  AppDelegate.m
//  TransitionDemo
//
//  Created by xuanyuanxidong on 2021/7/30.
//

#import "AppDelegate.h"

#import "HomeViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    HomeViewController *home = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    UINavigationController *navigation = [[UINavigationController alloc]initWithRootViewController:home];
    self.window.rootViewController = navigation;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}





@end
