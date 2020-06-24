//
//  Chapter1.m
//  RapidAdvanced
//
//  Created by 柯南 on 2020/6/19.
//  Copyright © 2020 LTM. All rights reserved.
//

#import "Chapter1.h"

// 应该使用“+”表示这是一个类方法，同时声明一个static静态变量来存储，
//类属性本身不提供存储

static NSString *className = @"customClassName";

@implementation Chapter1

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (void)methodOperateion{
    
}

+ (NSString *)classP{
    return className;
}

+ (void)setClassP:(NSString *)classP{
    className = classP;
}

/**
 Chapter1 *cha = [[Chapter1 alloc]initWithName:@"构造name"];
 
 //    cha.nickName;
 
 手动去除警告
 #pragma clang diagnostic push
 #pragma clang diagnostic ignored "--Wincompatible-pointer-types"
 // 你自己的代码
 #pragma clang diagnostic pop
 
 
 未使用变量
 #pragma clang diagnostic push
 #pragma clang diagnostic ignored "-Wunused-variable"
 int a;
 #pragma clang diagnostic pop
 
 
 */

@end
