//
//  AppDelegate.h
//  SSCustomTabbar
//
//  Created by Shrutesh Sharma on 19/11/12.
//
//

#import <UIKit/UIKit.h>
#import "SSTabBar.h"

@class SecondViewController;
@class ForthViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SSTabBar *tabBarController;

@property (strong, nonatomic) SecondViewController *sv;
@property (strong, nonatomic) ForthViewController *fv;


@end
