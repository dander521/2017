//
//  User.h
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import <Realm/Realm.h>
#import "Post.h"
RLM_ARRAY_TYPE(User);

@interface User : RLMObject

@property NSString *nickName;

// 一对多
@property (readonly) RLMLinkingObjects *posts;

@end
