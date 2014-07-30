//
//  DeviceEditorViewController.m
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "DeviceEditorViewController.h"
#import "DeviceEditorCell.h"

@interface DeviceEditorViewController ()

@end

@implementation DeviceEditorViewController

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
    self.title = @"Device Editor";
    [self setLeftCustomBarItem:@"fanhui.png" action:nil];
    UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [doneBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    doneBtn.frame = CGRectMake(0, 0, 60, 30);
    [doneBtn addTarget:self action:@selector(finishDeviceEdit) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithCustomView:doneBtn];
    self.navigationItem.rightBarButtonItem = rightBtn;
    [_table registerNibWithName:@"DeviceEditorCell" reuseIdentifier:@"Cell"];
    [_table clearSeperateLine];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"Cell";
    DeviceEditorCell *cell = (DeviceEditorCell *)[tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[DeviceEditorCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    if (indexPath.row == 0) {
        cell.imgView.hidden = YES;
    }
    if (indexPath.row == 1) {
        cell.keyLabel.text = @"Pictures";
        cell.valueLabel.hidden = YES;
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (void)finishDeviceEdit
{
    NSLog(@"完成了！！！！");
}
- (IBAction)resetEvent:(id)sender
{
    NSLog(@"恢复出厂设置成功！！");
}
@end
