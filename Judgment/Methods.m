//
//  Methods.m
//  Judgment
//
//  Created by PFei_He on 14-6-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "Methods.h"
#import <objc/runtime.h>
#import "GetClassName.h"

@implementation Methods

- (void)methodFirst
{
    // 传递当前的类名和方法名。__FUNCTION__关键字为C语言的基础关键字，作用为获取当前方法名（函数名），以及当前类名。
    [self funcMethods1:[NSString stringWithCString:__FUNCTION__ encoding:1]];
}

- (void)methodSecond
{
    //  NSStringFromSelector用于获取一个方法名
    [self funcMethods2:NSStringFromSelector(@selector(methodSecond))];
}

- (void)methodThird
{
    // _cmd在Objective-C的方法中表示当前方法的selector，正如同self表示当前方法调用的对象实例。
    [self funcMethods3:NSStringFromSelector(_cmd)];
}

- (void)methodFourth
{
    // 这种方法要导入<objc/runtime.h>头文件
    // _cmd在Objective-C的方法中表示当前方法的selector，正如同self表示当前方法调用的对象实例。
    [self funcMethods4:_cmd];
}

- (void)methodFifth
{
    // NSStringFromClass(self.class)为取本类的类名
    [self funcClass:NSStringFromClass(self.class)];
}

- (void)methodSixth
{
    GetClassName *className = [[GetClassName alloc] init];

    // NSStringFromClass(self.class)为取本类的类名
    className.name = NSStringFromClass(self.class);

    [className printClassName];
}

#pragma mark -

- (void)funcMethods1:(NSString *)func
{
    // 判断当前的类名和方法名是否相同
    if ([func isEqualToString:@"-[Methods methodFirst]"]) {
        NSLog(@"跑的是第一个方法");
        NSLog(@"名字是：%@", func);
    }
    else {
        NSLog(@"没有跑");
    }
}

- (void)funcMethods2:(NSString *)func
{
    // 判断当前的方法名是否相同
    if ([func isEqualToString:@"methodSecond"]) {
        NSLog(@"跑的是第二个方法");
        NSLog(@"名字是：%@", func);
    } else {
        NSLog(@"没有跑");
    }
}

- (void)funcMethods3:(NSString *)func
{
    // 判断当前的方法名是否相同
    if ([func isEqualToString:@"methodThird"]) {
        NSLog(@"跑的是第三个方法");
        NSLog(@"名字是：%@", func);
    } else {
        NSLog(@"没有跑");
    }
}

- (void)funcMethods4:(SEL)func
{
    // sel_isEqual关键字存在于系统文件<objc/runtime.h>，使用前要先导入
    if (sel_isEqual(func, @selector(methodFourth))) {
        NSLog(@"跑的是第四个方法");
    }
    else {
        NSLog(@"没有跑");
    }
}

- (void)funcClass:(NSString *)func
{
    NSLog(@"跑的是第五个方法");
    NSLog(@"名字是：%@", func);
}

@end
