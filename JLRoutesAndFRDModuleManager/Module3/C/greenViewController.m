//
//  greenViewController.m
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "greenViewController.h"

@interface greenViewController ()

//@property (nonatomic, strong) usermodel *model;

@end

@implementation greenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame =  CGRectMake(100, 100, 200, 30);
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)blockButton:(UIButton *)sender {
    _greenblock(@"我是greenblock回来的");
}

- (void)buttonClick{
    NSURL *url = [NSURL URLWithString:@"/pushTogray"];
//    _model = [[usermodel alloc] init];
//    _model.name = @"shawn";
//    _model.age = @"122";
//    _model.gender = @"男";
    [[JLRoutes globalRoutes] routeURL:url withParameters:@{@"vc":self,@"model":@""}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
