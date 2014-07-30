//
//  DeviceEditorViewController.h
//  RMControl
//
//  Created by Carl_Huang on 14-7-30.
//  Copyright (c) 2014年 helloworld. All rights reserved.
//

#import "CommonViewController.h"

@interface DeviceEditorViewController : CommonViewController<UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *table;
- (IBAction)resetEvent:(id)sender;

@end
