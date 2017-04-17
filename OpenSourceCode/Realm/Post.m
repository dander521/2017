//
//  Post.m
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import "Post.h"
#import "User.h"

@implementation Post

// 可控属性，决定属性是否可以为nil
+ (NSArray<NSString *> *)requiredProperties {
    return @[@"title"];
}

// 忽略属性

+ (NSArray<NSString *> *)ignoredProperties {
    return @[];
}

// 默认值
+ (NSDictionary *)defaultPropertyValues {
    return @{@"look" : @0, @"isTop":[NSNumber numberWithBool:false],@"content": [@"Hello, Realm" dataUsingEncoding:NSUTF8StringEncoding]};
}

// 索引属性

+ (NSArray<NSString *> *)indexedProperties {
    return @[@"title", @"timestamp"];
}

// 主键

+ (NSString *)primaryKey {
    return @"identifer";
}



@end
