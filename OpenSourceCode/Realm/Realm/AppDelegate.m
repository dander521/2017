//
//  AppDelegate.m
//  Realm
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 yuantuan. All rights reserved.
//

#import "AppDelegate.h"
#import "Realm.h"
#import "Post.h"

@interface AppDelegate ()

@property (nonatomic, strong) RLMRealm *realm;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    RLMRealm *r = [RLMRealm defaultRealm];
    
    [Post allObjects];
    
    [Post allObjectsInRealm:r];
    
    RLMRealmConfiguration *c = [RLMRealmConfiguration defaultConfiguration];
    
    NSLog(@"%@", c);
    
//    c.fileURL = [[NSBundle mainBundle] URLForResource:@"default" withExtension:@"realm"];
//    
//    c.readOnly = true;
    
    self.realm = [RLMRealm realmWithConfiguration:c error:nil];
    
    // 内存数据库
    
    RLMRealmConfiguration *memoryC = [RLMRealmConfiguration defaultConfiguration];
    
    memoryC.inMemoryIdentifier = @"memoryR";
    
    self.realm = [RLMRealm realmWithConfiguration:memoryC error:nil];
    
    // 数据库通知
    
    [self.realm addNotificationBlock:^(RLMNotification  _Nonnull notification, RLMRealm * _Nonnull realm) {
        
    }];
    
    RLMResults *results = [Post allObjects];
    
    [results addNotificationBlock:^(RLMResults * _Nullable results, RLMCollectionChange * _Nullable change, NSError * _Nullable error) {
        
    }];
    
    
    // 数据模型迁移
    memoryC.inMemoryIdentifier = @"memoryR";
    memoryC.schemaVersion = 1;
    
    [memoryC setMigrationBlock:^(RLMMigration *migration, uint64_t oldSchemaVersion) {
        if (oldSchemaVersion < 1) {
            [migration enumerateObjects:@"Post" block:^(RLMObject * _Nullable oldObject, RLMObject * _Nullable newObject) {
                newObject[@"hot"] = @([oldObject[@"look"] integerValue] + [oldObject[@"comments"] count]);
                
                
            }];
            
            [migration renamePropertyForClass:@"Post" oldName:@"title" newName:@"newTitle"];
        }
    }];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
