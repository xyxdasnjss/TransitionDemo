//
//  HomeViewController.m
//  TransitionDemo
//
//  Created by xuanyuanxidong on 2021/7/30.
//

#import "HomeViewController.h"

#import "BViewController.h"
#import "NavigationBViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)actionB:(id)sender {
    
    BViewController *vc = [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
    
    NavigationBViewController *navi = [[NavigationBViewController alloc] initWithRootViewController:vc];
    navi.modalPresentationStyle = UIModalPresentationCustom;
    [navi setNavigationBarHidden:YES];
    [self presentViewController:navi animated:YES completion:nil];
    
}

@end
