//
//  RightViewController.m
//  TestDemo
//
//  Created by LHL on 15/8/11.
//  Copyright © 2015年 yongche. All rights reserved.
//

#import "RightViewController.h"

@interface RightViewController ()

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 200, 60)];
    textLabel.textColor = [UIColor blackColor];
    textLabel.text = @"right";
    [self.view addSubview:textLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
