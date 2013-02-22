//
//  SSTabBar.m
//  testCovenent2
//
//  Created by Shrutesh Sharma on 31/10/12.
//  Copyright (c) 2012 Shrutesh Sharma. All rights reserved. // Please do not remove this line
//

#import "SSTabBar.h"
#import "AppDelegate.h"


@interface SSTabBar ()

@end

@implementation SSTabBar
@synthesize btn1,btn2,btn3;


- (void)viewDidAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
	[self hideTabBar];
	[self addCustomElements];
    
#pragma orientation thing

  
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    
}

- (void)hideTabBar
{
	for(UIView *view in self.view.subviews)
	{
		if([view isKindOfClass:[UITabBar class]])
		{
			view.hidden = YES;
			break;
		}
	}
}

-(void) addCustomElements{
    
    bottomTab = [[UIView alloc]initWithFrame:CGRectMake(0, 969, 768, 56)];
    bottomTab.backgroundColor = [UIColor grayColor];
    
    self.btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn1.frame = CGRectMake(8, 6, 102, 45);
	[btn1 setTitle:@"Not Selected" forState:UIControlStateNormal];
	[btn1 setTitle:@"Selected" forState:UIControlStateSelected];
	[btn1 setTag:0];
	[btn1 setSelected:true];
    
    self.btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn2.frame = CGRectMake(110, 6, 100, 45);
	[btn2 setTitle:@"Not Selected" forState:UIControlStateNormal];
	[btn2 setTitle:@"Selected" forState:UIControlStateSelected];
	[btn2 setTag:1];
	
	self.btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn3.frame = CGRectMake(210, 6, 133, 46);
	[btn3 setTitle:@"Not Selected" forState:UIControlStateNormal];
	[btn3 setTitle:@"Selected" forState:UIControlStateSelected];
	[btn3 setTag:2];

    [btn1 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
	[btn2 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:bottomTab];
    [bottomTab addSubview:btn1];
    [bottomTab addSubview:btn2];
    [bottomTab addSubview:btn3];

    
}


- (void)btnClicked:(id)sender
{
	int tagNum = [sender tag];
	[self selectTab:tagNum];
}


-(void) selectTab:(int)tabID{
    
    AppDelegate * appDelegate =(AppDelegate *)[[UIApplication sharedApplication] delegate];

    switch(tabID)
	{
		case 0:
			[btn1 setSelected:true];
			[btn2 setSelected:false];
			[btn3 setSelected:false];
           

			break;
            
		case 1:
			[btn1 setSelected:false];
			[btn2 setSelected:true];
			[btn3 setSelected:false];
            
             
			break;
            
		case 2:
			[btn1 setSelected:false];
			[btn2 setSelected:false];
			[btn3 setSelected:true];

            
            

            
			break;
            
        			

    }
	
	self.selectedIndex = tabID;
    
}




- (void)viewWillLayoutSubviews{
    
    if([[UIApplication sharedApplication]statusBarOrientation]==UIInterfaceOrientationLandscapeRight || [[UIApplication sharedApplication] statusBarOrientation]==UIInterfaceOrientationLandscapeLeft){
        
        bottomTab.frame = CGRectMake(0, 713, 1024, 56);

    }
    else if(([[UIApplication sharedApplication]statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication]statusBarOrientation]==UIInterfaceOrientationPortraitUpsideDown)){
        
        bottomTab.frame = CGRectMake(0, 969, 768, 56);

    }
    
}





-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // You do not need this method if you are not supporting earlier iOS Versions
    return [self.selectedViewController shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate
{
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
