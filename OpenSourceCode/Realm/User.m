//
//  User.m
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import "User.h"
#import "Post.h"

@implementation User

// 反向关系 给存在多个的对象设置

+ (NSDictionary<NSString *,RLMPropertyDescriptor *> *)linkingObjectsProperties {
    return @{
             @"posts" : [RLMPropertyDescriptor descriptorWithClass:Post.class propertyName:@"author"]
             };
}

@end
