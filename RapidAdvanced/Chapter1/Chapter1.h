//
//  Chapter1.h
//  RapidAdvanced
//
//  Created by 柯南 on 2020/6/19.
//  Copyright © 2020 LTM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Chapter1 : NSObject

- (instancetype)initWithName:(NSString *)name;

/**
 通过UNAVAILABLE_ATTRIBUTE修饰以在头文件中禁用其他的初始化方法，
 可保证只有自己提供的初始化方法才是唯一途径
 */
- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

- (void)methodOperateion UNAVAILABLE_ATTRIBUTE;

@property (nonatomic, strong) NSString *nickName UNAVAILABLE_ATTRIBUTE;

/**
 创建类属性
 
 */
@property (nonatomic, strong, class) NSString *classP;

@end

NS_ASSUME_NONNULL_END
