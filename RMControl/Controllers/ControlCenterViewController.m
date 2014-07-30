//
//  ControlCenterViewController.m
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "ControlCenterViewController.h"
#import "SetUpViewController.h"

@interface ControlCenterViewController ()

@end

@implementation ControlCenterViewController

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
    [self setRightCustomBarItem:@"control_set.png" action:@selector(showSetUpVC)];
    isModenOne = YES;
    isModenTwo=isModenThree=isModenFour=isModenFive=isModenSix = NO;
}

- (void)showSetUpVC
{
    SetUpViewController *setUpVC = [[SetUpViewController alloc] init];
    [self.navigationController pushViewController:setUpVC animated:YES];
}
- (IBAction)modenButtonClickEvent:(id)sender
{
    if (sender == _modenOneButton) {
        if (!isModenOne) {
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-2.png"] forState:UIControlStateNormal];
            isModenOne = YES;
            
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-3.png"] forState:UIControlStateNormal];
            isModenTwo = NO;
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-5.png"] forState:UIControlStateNormal];
            isModenThree = NO;
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-7.png"] forState:UIControlStateNormal];
            isModenFour = NO;
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-9.png"] forState:UIControlStateNormal];
            isModenFive = NO;
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-11.png"] forState:UIControlStateNormal];
            isModenSix = NO;
        }
        else
        {
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-2.png"] forState:UIControlStateNormal];
            isModenOne = YES;
        }
    }
    else if (sender == _modenTwoButton)
    {
        if (!isModenTwo) {
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-4.png"] forState:UIControlStateNormal];
            isModenTwo = YES;
            
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-1.png"] forState:UIControlStateNormal];
            isModenOne = NO;
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-5.png"] forState:UIControlStateNormal];
            isModenThree = NO;
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-7.png"] forState:UIControlStateNormal];
            isModenFour = NO;
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-9.png"] forState:UIControlStateNormal];
            isModenFive = NO;
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-11.png"] forState:UIControlStateNormal];
            isModenSix = NO;
        }
        else
        {
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-4.png"] forState:UIControlStateNormal];
            isModenTwo = YES;
        }
    }
    else if (sender == _modenThreeButton)
    {
        if (!isModenThree) {
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-6.png"] forState:UIControlStateNormal];
            isModenThree = YES;
            
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-1.png"] forState:UIControlStateNormal];
            isModenOne = NO;
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-3.png"] forState:UIControlStateNormal];
            isModenTwo = NO;
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-7.png"] forState:UIControlStateNormal];
            isModenFour = NO;
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-9.png"] forState:UIControlStateNormal];
            isModenFive = NO;
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-11.png"] forState:UIControlStateNormal];
            isModenSix = NO;
        }
        else
        {
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-6.png"] forState:UIControlStateNormal];
            isModenThree = YES;
        }
    }
    else if (sender == _modenFourButton)
    {
        if (!isModenFour) {
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-8.png"] forState:UIControlStateNormal];
            isModenFour = YES;
            
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-1.png"] forState:UIControlStateNormal];
            isModenOne = NO;
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-3.png"] forState:UIControlStateNormal];
            isModenTwo = NO;
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-5.png"] forState:UIControlStateNormal];
            isModenThree = NO;
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-9.png"] forState:UIControlStateNormal];
            isModenFive = NO;
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-11.png"] forState:UIControlStateNormal];
            isModenSix = NO;
        }
        else
        {
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-8.png"] forState:UIControlStateNormal];
            isModenFour = YES;
        }
    }
    else if (sender == _modenFiveButton)
    {
        if (!isModenFive) {
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-10.png"] forState:UIControlStateNormal];
            isModenFive = YES;
            
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-1.png"] forState:UIControlStateNormal];
            isModenOne = NO;
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-3.png"] forState:UIControlStateNormal];
            isModenTwo = NO;
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-5.png"] forState:UIControlStateNormal];
            isModenThree = NO;
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-7.png"] forState:UIControlStateNormal];
            isModenFour = NO;
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-11.png"] forState:UIControlStateNormal];
            isModenSix = NO;
        }
        else
        {
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-10.png"] forState:UIControlStateNormal];
            isModenFive = YES;
        }
    }
    else if (sender == _modenSixButton)
    {
        if (!isModenSix) {
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-12.png"] forState:UIControlStateNormal];
            isModenSix = YES;
            
            [_modenOneButton setImage:[UIImage imageNamed:@"ren-1.png"] forState:UIControlStateNormal];
            isModenOne = NO;
            [_modenTwoButton setImage:[UIImage imageNamed:@"ren-3.png"] forState:UIControlStateNormal];
            isModenTwo = NO;
            [_modenThreeButton setImage:[UIImage imageNamed:@"ren-5.png"] forState:UIControlStateNormal];
            isModenThree = NO;
            [_modenFourButton setImage:[UIImage imageNamed:@"ren-7.png"] forState:UIControlStateNormal];
            isModenFour = NO;
            [_modenFiveButton setImage:[UIImage imageNamed:@"ren-9.png"] forState:UIControlStateNormal];
            isModenFive = NO;
            
        }
        else
        {
            [_modenSixButton setImage:[UIImage imageNamed:@"ren-12.png"] forState:UIControlStateNormal];
            isModenSix = YES;
        }
    }
}
@end
