//
//  BinaryTreeNode.m
//  BinaryTree
//
//  Created by 郭刚 on 2019/2/21.
//  Copyright © 2019 郭刚. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

+ (instancetype)nodewithValue:(NSInteger)value {
    BinaryTreeNode *node = [[super alloc] init];
    node.value = value;
    return node;
}

@end
