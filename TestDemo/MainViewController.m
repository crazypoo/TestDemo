//
//  MainViewController.m
//  TestDemo
//
//  Created by LHL on 15/8/11.
//  Copyright © 2015年 yongche. All rights reserved.
//

#import "MainViewController.h"
#import "MaskView.h"
@interface MainViewController ()<UIScrollViewDelegate>{
    MaskView *maskView;
}


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.view.backgroundColor = [UIColor redColor];
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 200, 60)];
    textLabel.textColor = [UIColor blackColor];
    textLabel.text = @"main";
    [self.view addSubview:textLabel];
    
//    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    scrollView.backgroundColor = [UIColor brownColor];
//    [self.view addSubview:scrollView];
//    

    
    maskView = [[MaskView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 16)];
    [self.view addSubview:maskView];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 130, self.view.frame.size.width, 60)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width*2, 2*60);
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:scrollView];
}

-(void)scrollViewDidScroll:(nonnull UIScrollView *)scrollView{
    [maskView contentOffset:scrollView.contentOffset];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
