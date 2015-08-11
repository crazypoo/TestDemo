//
//  LeftViewController.m
//  TestDemo
//
//  Created by LHL on 15/8/11.
//  Copyright © 2015年 yongche. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 200, 60)];
    textLabel.textColor = [UIColor blackColor];
    textLabel.text = @"left";
    [self.view addSubview:textLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
