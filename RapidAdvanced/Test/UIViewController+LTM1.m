//
//  UIViewController+LTM1.m
//  RapidAdvanced
//
//  Created by 柯南 on 2020/6/19.
//  Copyright © 2020 LTM. All rights reserved.
//

#import "UIViewController+LTM1.h"

#import "UIViewController+LTM.h"
#import <objc/runtime.h>

@implementation UIViewController (LTM1)
+(void)initialize{
    Method originalMethod = class_getInstanceMethod([UIViewController class], @selector(viewWillAppear:));
    
    Method swizzedMethod = class_getInstanceMethod([UIViewController class], @selector(ltm1_viewWillAppear:));
    
    method_exchangeImplementations(originalMethod, swizzedMethod);
}

- (void)ltm1_viewWillAppear: (BOOL)animated{
    [self ltm1_viewWillAppear:animated];
    NSLog(@"3 ltm1_viewWillAppear");
}

@end
