//
//  Post.h
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import <Realm/Realm.h>
RLM_ARRAY_TYPE(Post);

@class User;
@interface Post : RLMObject

// id 主键
@property NSString *identifer;

// 标题
@property NSString *title;

// 作者 To-one 关系 对一关系
@property User *author;

// 时间戳
@property NSDate *timestamp;

// 内容
@property NSData *content;

// 浏览量
@property NSInteger look;

// 回帖 对多关系
@property RLMArray<Post *><Post> *comments;

// 置顶
@property BOOL isTop;

// 不支持 CGFloat， 使用float double



@end
