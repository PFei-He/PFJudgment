//
//  Go.m
//  Judgment
//
//  Created by PFei_He on 14-6-18.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "GetClassName.h"

@implementation GetClassName

@synthesize name = _name;

- (void)printClassName
{
    NSLog(@"跑的是第六个方法");
    NSLog(@"获得的类名是：%@", self.name);
}

@end
