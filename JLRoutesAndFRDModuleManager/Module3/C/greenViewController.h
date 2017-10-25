//
//  greenViewController.h
//  JLRoutesAndFRDModuleManager
//
//  Created by shawn on 2017/10/24.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^greenBlock)(NSString *block);

@interface greenViewController : UIViewController

@property (nonatomic, copy) greenBlock greenblock;

@end
