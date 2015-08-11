//
//  HLSilderViewController.m
//  TestDemo
//
//  Created by LHL on 15/8/11.
//  Copyright © 2015年 yongche. All rights reserved.
//

#import "HLSilderViewController.h"

@interface HLSilderViewController (){
    CGPoint oldPoint;
}

@property (nonatomic, strong) UIViewController *mainViewController;
@property (nonatomic, strong) UIViewController *leftViewController;
@property (nonatomic, strong) UIViewController *rightViewController;

@end

@implementation HLSilderViewController

- (instancetype)initWithMainVC:(UIViewController *)mainVC
                        leftVC:(UIViewController *)leftVC
                       rightVC:(UIViewController *)rightVC
               backGroundImage:(UIImage *)backGroundImage{
    if (self = [super init]) {
        self.mainViewController = mainVC;
        self.leftViewController = leftVC;
        self.rightViewController = rightVC;
        if (backGroundImage) {
            UIImageView *bgImageView = [[UIImageView alloc] initWithImage:backGroundImage];
            bgImageView.frame = self.view.bounds;
            [self.view addSubview:bgImageView];
        }
        
        [self.view addSubview:rightVC.view];
        [self.view addSubview:leftVC.view];
        [self.view addSubview:mainVC.view];
        
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognizer:)];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognizer:)];
        [mainVC.view addGestureRecognizer:panGesture];
        [mainVC.view addGestureRecognizer:tapGesture];

    }
    return self;
}

- (void)panGestureRecognizer:(UIPanGestureRecognizer *)gesture{
    CGPoint point = [gesture translationInView:gesture.view];
    NSLog(@"%@", NSStringFromCGPoint(point));
    
    if(gesture.state == UIGestureRecognizerStateBegan){
        oldPoint = self.mainViewController.view.frame.origin;
    } else if(gesture.state == UIGestureRecognizerStateEnded){
        if ((point.x + oldPoint.x) > 200) {
            [UIView animateWithDuration:0.3 animations:^{
                CGRect mainFrame = self.mainViewController.view.frame;
                mainFrame.origin.x = 300;
                self.mainViewController.view.frame = mainFrame;
            }];

        } else if((point.x + oldPoint.x) < -200) {
            [UIView animateWithDuration:0.3 animations:^{
            CGRect mainFrame = self.mainViewController.view.frame;
            mainFrame.origin.x = -300;
            self.mainViewController.view.frame = mainFrame;
            }];

        } else {
            [UIView animateWithDuration:0.3 animations:^{
            CGRect mainFrame = self.mainViewController.view.frame;
            mainFrame.origin.x = 0;
            self.mainViewController.view.frame = mainFrame;
            }];
        }
        
    } else {
        CGRect mainFrame = self.mainViewController.view.frame;
        mainFrame.origin.x = point.x + oldPoint.x;
        self.mainViewController.view.frame = mainFrame;
    }
}

- (void)tapGestureRecognizer:(UITapGestureRecognizer *)gesture{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect mainFrame = self.mainViewController.view.frame;
        mainFrame.origin.x = 0;
        self.mainViewController.view.frame = mainFrame;
    }];

}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
