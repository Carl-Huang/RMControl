//
//  ControlMainCenterViewController.m
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "ControlMainCenterViewController.h"

@interface ControlMainCenterViewController ()

@end

@implementation ControlMainCenterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initUI
{
    self.title = @"Control Center";
    [self setLeftCustomBarItem:@"fanhui.png" action:nil];
    [self setRightCustomBarItem:@"fangge.png" action:nil];
    
}
@end
