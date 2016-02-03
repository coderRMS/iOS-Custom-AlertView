//
//  ViewController.m
//  MSAlertViewDemo
//
//  Created by 阮明森 on 16/2/2.
//  Copyright © 2016年 rms. All rights reserved.
//

#import "ViewController.h"
#import "MSAlertView.h"

@interface ViewController ()<MSAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showNormalAlert:(id)sender {
    MSAlertView *alert = [[MSAlertView alloc] initWithTitle:@"退出登录" icon:nil message:@"确定退出登录吗？" delegate:self buttonTitles:@"确定", @"取消", nil];
    [alert setMessageColor:[UIColor redColor] fontSize:0];
    [alert show];
}

- (IBAction)showIconAlert:(id)sender {
    MSAlertView *alert = [[MSAlertView alloc] initWithTitle:@"退出登录" icon:[UIImage imageNamed:@"exclamation-icon"] message:@"你确定退出登录吗？" delegate:self buttonTitles:@"确定", @"取消", nil];
    [alert show];
}


- (void)alertView:(MSAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%ld", (long)buttonIndex);
}
@end
