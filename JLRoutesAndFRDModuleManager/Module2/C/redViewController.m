//
//  redViewController.m
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "redViewController.h"

@interface redViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameL;

@property (weak, nonatomic) IBOutlet UILabel *ageL;
@property (weak, nonatomic) IBOutlet UILabel *blockLabel;

@end

@implementation redViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame =  CGRectMake(100, 100, 200, 30);
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _nameL.text = self.name;
    _ageL.text  = self.age;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonClick{
   id parm = ^(NSString *name){
       _blockLabel.text = name;
    };
    NSURL *url = [NSURL URLWithString:@"/pushTogreen"];
    [[JLRoutes globalRoutes] routeURL:url withParameters:@{@"vc":self,@"block":parm}];
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
