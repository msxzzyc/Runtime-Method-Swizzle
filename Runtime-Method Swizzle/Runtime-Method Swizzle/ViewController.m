//
//  ViewController.m
//  Runtime-Method Swizzle
//
//  Created by wpzyc on 2017/8/9.
//  Copyright © 2017年 wpzyc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)dealloc
{
    NSLog(@"%@ - dealloc",self);
}


@end
