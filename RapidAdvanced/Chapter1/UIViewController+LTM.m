//
//  UIViewController+LTM.m
//  RapidAdvanced
//
//  Created by 柯南 on 2020/6/19.
//  Copyright © 2020 LTM. All rights reserved.
//

#import "UIViewController+LTM.h"

#import <objc/runtime.h>

@implementation UIViewController (LTM)

+(void)initialize{
    Method originalMethod = class_getInstanceMethod([UIViewController class], @selector(viewWillAppear:));
    
    Method swizzedMethod = class_getInstanceMethod([UIViewController class], @selector(ltm_viewWillAppear:));
    
    method_exchangeImplementations(originalMethod, swizzedMethod);
}

- (void)ltm_viewWillAppear: (BOOL)animated{
    [self ltm_viewWillAppear:animated];
    NSLog(@"2 ltm_viewWillAppear");
}

@end
