//
//  NavigationBViewController.m
//  TransitionDemo
//
//  Created by xuanyuanxidong on 2021/7/30.
//

#import "NavigationBViewController.h"

#import "BPresentTransition.h"

@interface NavigationBViewController ()
<UIViewControllerTransitioningDelegate>

@end

@implementation NavigationBViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.transitioningDelegate = self;
    
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    // present代理方法
    BPresentTransition *presentTransition = [BPresentTransition new];
    
    return presentTransition;
}


- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    // dismiss代理方法
    BPresentTransition *presentTransition = [BPresentTransition new];
    return presentTransition;
}

@end
