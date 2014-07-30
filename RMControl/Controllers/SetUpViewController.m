//
//  SetUpViewController.m
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "SetUpViewController.h"
#import "SetUpCell.h"
#import "AboutViewController.h"
#import "DeviceEditorViewController.h"

@interface SetUpViewController ()

@end

@implementation SetUpViewController

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
    self.title = @"Set Up";
    [self setLeftCustomBarItem:@"fanhui.png" action:nil];
    [_setupListTableView clearSeperateLine];
    [_setupListTableView registerNibWithName:@"SetUpCell" reuseIdentifier:@"Cell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"Cell";
    SetUpCell *cell = (SetUpCell *)[tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[SetUpCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    if (indexPath.row == 0) {
        cell.jiantouImgView.hidden = YES;
    }
    if (indexPath.row == 1) {
        cell.iconImgView.image = [UIImage imageNamed:@"xiuli.png"];
        cell.titleNameLabel.text = @"Device Editor";
    }
    if (indexPath.row == 2) {
        cell.iconImgView.image = [UIImage imageNamed:@"about.png"];
        cell.titleNameLabel.text = @"About";
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DeviceEditorViewController *deviceEditorVC = [[DeviceEditorViewController alloc] init];
    AboutViewController *aboutVC = [[AboutViewController alloc] init];
    switch (indexPath.row) {
        case 0:
            
            break;
        case 1:
            [self.navigationController pushViewController:deviceEditorVC animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:aboutVC animated:YES];
            break;
        default:
            break;
    }
    
}
@end
