//
//  ViewController.m
//  DyldLoadDemo
//
//  Created by sunner on 2021/3/5.
//  Copyright © 2021 sunner. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"

@interface ViewController ()

@end

@implementation ViewController

// 每个文件的 injected 会被触发
- (void)injected {
    [self abc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    [self abc];
    
    [[Test alloc] init];
    
}

- (void)abc {
    NSLog(@"%s", __func__);
}


@end
