//
//  BViewController.m
//  TransitionDemo
//
//  Created by xuanyuanxidong on 2021/7/30.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)actionDismiss:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
            
    }];
    
}

@end
