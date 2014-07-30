//
//  SelectDeviceViewController.m
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "SelectDeviceViewController.h"
#import "DeviceCell.h"
#import "ControlCenterViewController.h"
#import "ControlMainCenterViewController.h"

@interface SelectDeviceViewController ()

@end

@implementation SelectDeviceViewController

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
    self.title = @"Select Device";
    [_deviceListTableView registerNibWithName:@"DeviceCell" reuseIdentifier:@"Cell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"Cell";
    DeviceCell *cell = (DeviceCell *)[tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[DeviceCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    ControlMainCenterViewController *controlMainCenter;
//    if ([[UIScreen mainScreen] bounds].size.height < 490) {
//       controlMainCenter = [[ControlMainCenterViewController alloc] initWithNibName:@"ControlMainCenter_4s" bundle:[NSBundle mainBundle]];
//    }
//    else
//    {
//         controlMainCenter = [[ControlMainCenterViewController alloc] initWithNibName:@"ControlMainCenterViewController" bundle:[NSBundle mainBundle]];
//    }
//    [self.navigationController pushViewController:controlMainCenter animated:YES];
    
    ControlCenterViewController *controlCenterVC = [[ControlCenterViewController alloc] init];
    [self.navigationController pushViewController:controlCenterVC animated:YES];
    
}
- (IBAction)reloadTheData:(id)sender
{
    [_deviceListTableView reloadData];
}
@end
