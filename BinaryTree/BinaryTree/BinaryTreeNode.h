//
//  BinaryTreeNode.h
//  BinaryTree
//
//  Created by 郭刚 on 2019/2/21.
//  Copyright © 2019 郭刚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BinaryTreeNode : NSObject
/**
 值
 */
@property (nonatomic,assign) NSInteger value;

/**
 左节点
 */
@property (nonatomic,strong) BinaryTreeNode *leftNode;

/**
 右节点
 */
@property (nonatomic,strong) BinaryTreeNode *rightNode;

/// 遍历构造器
+ (instancetype)nodewithValue:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END
