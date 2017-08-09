//
//  UIViewController+ZYCExtention.m
//  Runtime-Method Swizzle
//
//  Created by wpzyc on 2017/8/9.
//  Copyright © 2017年 wpzyc. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@implementation UIViewController (ZYCExtention)
+ (void)load
{
    
    Method method1 = class_getInstanceMethod(self, NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod(self, @selector(zyc_dealloc));
    method_exchangeImplementations(method1, method2);
}
- (void)zyc_dealloc
{
    NSLog(@"%@ - zyc_dealloc",self);
    
    [self zyc_dealloc];
}
@end
