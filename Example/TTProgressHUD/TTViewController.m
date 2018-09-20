//
//  TTViewController.m
//  TTProgressHUD
//
//  Created by claudeli@yeah.net on 09/20/2018.
//  Copyright (c) 2018 claudeli@yeah.net. All rights reserved.
//

#import "TTViewController.h"
#import <TTProgressHUD/TTProgressHUD.h>

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showProgress:YES];
    
    [self performSelector:@selector(next) withObject:nil afterDelay:1.5];
}

- (void)next{
    [self showText:@"哈哈" delay:2 canTouch:YES];
    
    [self performSelector:@selector(nextNext) withObject:nil afterDelay:3];
}

- (void)nextNext{
    [TTHUD showText:@"hello hud"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
