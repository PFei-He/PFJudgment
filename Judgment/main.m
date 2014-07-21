//
//  main.m
//  Judgment
//
//  Created by PFei_He on 14-6-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Methods.h"
#import "GetClassName.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Methods *methods = [[Methods alloc] init];

        // 调用第一个方法
        [methods methodFirst];

        // 调用第二个方法
        [methods methodSecond];

        // 调用第三个方法
        [methods methodThird];

        // 调用第四个方法
        [methods methodFourth];

        // 调用第五个方法
        [methods methodFifth];

        // 调用第六个方法
        [methods methodSixth];
    }
    return 0;
}

