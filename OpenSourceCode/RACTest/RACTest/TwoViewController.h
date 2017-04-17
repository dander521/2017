//
//  TwoViewController.h
//  RACTest
//
//  Created by apple on 2017/2/15.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReactiveCocoa.h"

@interface TwoViewController : UIViewController

@property (nonatomic, strong) RACSubject *delegateSignal;

@end
