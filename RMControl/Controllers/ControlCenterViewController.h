//
//  ControlCenterViewController.h
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "CommonViewController.h"

@interface ControlCenterViewController : CommonViewController
{
    BOOL isModenOne,isModenTwo,isModenThree,isModenFour,isModenFive,isModenSix;
}
@property (weak, nonatomic) IBOutlet UIButton *modenOneButton;
@property (weak, nonatomic) IBOutlet UIButton *modenTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *modenThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *modenFourButton;
@property (weak, nonatomic) IBOutlet UIButton *modenFiveButton;
@property (weak, nonatomic) IBOutlet UIButton *modenSixButton;
- (IBAction)modenButtonClickEvent:(id)sender;


@end
