//
//  BPresentTransition.m
//  TransitionDemo
//
//  Created by xuanyuanxidong on 2021/7/30.
//

#import "BPresentTransition.h"

@implementation BPresentTransition


- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return .3f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIView *containerView = [transitionContext containerView];
    UIViewController *fromVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVc = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
//    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView *toView =[transitionContext viewForKey:UITransitionContextToViewKey];
    if (toView == nil) {
        toView = toVc.view;
    }
    
    BOOL present = (toVc.presentingViewController == fromVc) ? YES : NO;
    
    if (present) {
        [containerView addSubview:toView];
        toView.frame = CGRectMake(0,
                                  -containerView.bounds.size.height,
                                  containerView.bounds.size.width,
                                  containerView.bounds.size.height);

        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            toView.frame = CGRectMake(0,
                                      0,
                                      containerView.bounds.size.width,
                                      containerView.bounds.size.height);
            

            fromVc.view.transform = CGAffineTransformIdentity;
            CGAffineTransform transform = CGAffineTransformMakeTranslation(0, containerView.bounds.size.height);
            fromVc.view.transform = CGAffineTransformScale(transform, .7, .7);

        } completion:^(BOOL finished) {
            
            
            BOOL cancel = [transitionContext transitionWasCancelled];
            [transitionContext completeTransition:!cancel];
        }];
        
    } else {

        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{

            CGAffineTransform transform = CGAffineTransformMakeTranslation(0, -containerView.bounds.size.height);
            fromVc.view.transform = CGAffineTransformScale(transform, .7, .7);
            

            toView.transform = CGAffineTransformIdentity;

        } completion:^(BOOL finished) {
            BOOL cancel = [transitionContext transitionWasCancelled];
            [transitionContext completeTransition:!cancel];
        }];
        
        
    }
    
}


#pragma mark - 
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return self;
}


- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return self;
}



@end
