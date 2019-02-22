//
//  AppDelegate.m
//  BinaryTree
//
//  Created by 郭刚 on 2019/2/21.
//  Copyright © 2019 郭刚. All rights reserved.
//

#import "AppDelegate.h"
#import "BinaryTree.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSArray *arr = @[@4,@2,@7,@1,@3,@6,@9];
    BinaryTreeNode *node = [BinaryTree createTreeWithValues:arr];
    
    [BinaryTree treeFirstInformationWithNode:node resultBlock:^(NSInteger value) {
        NSLog(@"正序value = %ld",value);
    }];
    NSLog(@"\n--------------------------------------------------------------------------------------\n");

    // 反转二叉树
    BinaryTreeNode *invertBinaryTree = [BinaryTree invertBinaryTreeee:node]; // invertBinaryTreeWithoutRecursion
    // 先序遍历
    [BinaryTree treeFirstInformationWithNode:invertBinaryTree resultBlock:^(NSInteger value) {
        NSLog(@"反序value = %ld",value);
    }];
    
    NSLog(@"\n--------------------------------------------------------------------------------------\n");

    //中序遍历
    [BinaryTree treeMiddleInformationWithNode:invertBinaryTree resultBlock:^(NSInteger value) {
        NSLog(@"中序value = %ld",value);
    }];
    
    NSLog(@"\n--------------------------------------------------------------------------------------\n");

    // 后续遍历
    [BinaryTree treeeLastInformationWithNode:invertBinaryTree resultBolck:^(NSInteger value) {
        NSLog(@"后序value = %ld",value);
    }];
    
    NSLog(@"\n--------------------------------------------------------------------------------------\n");
    // 二叉树深度
    NSLog(@"二叉树深度 = %ld",[BinaryTree depathOfTree:invertBinaryTree]);
    NSLog(@"\n--------------------------------------------------------------------------------------\n");

    // 二叉树所有节点数
    NSLog(@"二叉树所有节点数 = %ld",[BinaryTree numberOfNodesInTree:invertBinaryTree]);
    NSLog(@"\n--------------------------------------------------------------------------------------\n");

    NSLog(@"二叉树中某个节点到根节点的路径 = %@",[BinaryTree pathOfTreeNode:invertBinaryTree inTree:invertBinaryTree]);
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
