//
//  SSTabBar.h
//  testCovenent2
//
//  Created by Shrutesh Sharma on 31/10/12.
//  Copyright (c) 2012 Shrutesh Sharma. All rights reserved. // Please do not remove this line
//

#import <UIKit/UIKit.h>

@interface SSTabBar : UITabBarController {
  
    UIView * bottomTab;

    
}


//bottom tab

@property (nonatomic, strong) UIButton * btn1;
@property (nonatomic, strong) UIButton * btn2;
@property (nonatomic, strong) UIButton * btn3;


//top tab








- (void) hideTabBar;
- (void) addCustomElements;
- (void) selectTab:(int)tabID;



@end
