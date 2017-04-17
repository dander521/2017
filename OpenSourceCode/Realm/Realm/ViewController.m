//
//  ViewController.m
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import "ViewController.h"
#import "Realm.h"
#import "Post.h"
#import "User.h"

@interface ViewController ()

@end

@interface Dog : RLMObject
@property NSString *name;
@property NSInteger age;
@end

@implementation Dog
@end

RLM_ARRAY_TYPE(Dog);

@interface Person : RLMObject
@property NSString *name;
@property RLMArray<Dog*><Dog> *dogs;
@end

@implementation Person
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    // 创建一个数据库
    Dog *dog = [[Dog alloc] init];
    dog.name = @"Bagon";
    dog.age = 1;
    
    Dog *dog1 = [[Dog alloc] init];
    dog1.name = @"Henry";
    dog1.age = 2;
    
    Person *owner = [[Person alloc] init];
    owner.name = @"Sam";
    [owner.dogs addObject:dog];
    [owner.dogs addObject:dog1];
    
    NSLog(@"%@", owner);
    
    // 查询
    RLMResults *results = [Dog objectsWhere:@"age < 2"];
    NSLog(@"%@", results);
    
    // 添加
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm transactionWithBlock:^{
        [realm addObject:dog];
    }];
    
    NSLog(@"%@", results);
    
    // 线程
    
    
    

    Post *post = [[Post alloc] initWithValue:@{@"title" : @"Roger"}];
    post.content = [@"Hello, Realm" dataUsingEncoding:NSUTF8StringEncoding];
    
    User *user = [[User alloc] init];
    user.nickName = @"Chen";
    post.author = user;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    [realm transactionWithBlock:^{
        [realm addObject:post];
        [realm addObject:user];
        
        NSLog(@"%@", user.posts);
    }];
     
    
    NSLog(@"%@", NSHomeDirectory());
    
    Post *post = [[Post alloc] init];
    post.identifer = [[NSDate date] description];
    post.title = @"untitle";
    
    User *user = [[User alloc] init];
    user.nickName = @"Roger Chen";
    post.author = user;
    
    RLMRealm *r = [RLMRealm defaultRealm];
    
    [r transactionWithBlock:^{
        [r addObject:post];
    }];
    
    [r transactionWithBlock:^{
//        [r deleteObject:post];
    }];
    
    [r transactionWithBlock:^{
        post.timestamp = [NSDate date];
    }];
    
    RLMResults *results = [Post objectsWhere:@"title == %@", @"untitle"];
    
    Post *postBeFound = [results firstObject];
    
    [r transactionWithBlock:^{
        post.title = @"Test For Change";
    }];
    
    // 通过主键更新
    
    Post *postNew = [[Post alloc] init];
    postNew.identifer = @"1";
    postNew.title = @"newPost";
    [r transactionWithBlock:^{
        [r addOrUpdateObject:postNew];
    }];
    
    NSLog(@"%@", postBeFound);
    
    // 批量修改
    
    RLMResults *allPosts = [Post allObjects];
    
    [r transactionWithBlock:^{
        [allPosts setValue:[NSDate date] forKey:@"timestamp"];
    }];
    
    
    RLMResults *re1 = [Post objectsWhere:@"look > 10"];
    
    RLMResults *re2 = [Post objectsWhere:@"look > 10 AND look < 100"];
    
    RLMResults *re3 = [Post objectsWhere:@"look BETWEEN {10, 100}"];
    
    RLMResults *re4 = [Post objectsWhere:@"title CONTAINS[c] 'test'"];
    
    NSLog(@"%@ %@ %@ %@", re1,re2,re3,re4);
    
    RLMResults *re5 = [Post objectsWhere:@"comments.@count > 10"];
    
    RLMResults *re6 = [re5 objectsWhere:@"look > 10"];
    
    [re6 sortedResultsUsingProperty:@"timestamp" ascending:NO];
    
    
    */
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
