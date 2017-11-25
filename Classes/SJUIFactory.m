//
//  SJUIFactory.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIFactory.h"
#import "SJUIFactoryHeader.h"

@implementation SJUIFactory

+ (__kindof UIView *)ui_updateView:(UIView *)view block:(void(^)(__kindof SJUIViewWorker *worker))block {
    NSAssert([view isKindOfClass:[UIView class]], @"cls must be a subclass of UIView.");
    SJUIViewWorker *worker = [[SJUIViewWorker alloc] initWithView:view];
    block(worker);
    return worker.view;
}

+ (UIView *)ui_makeView:(void(^)(SJUIViewWorker *worker))block {
    return [self ui_makeViewWithClass:[UIView class] block:block];
}

+ (__kindof UIView *)ui_makeViewWithClass:(Class)cls block:(void(^)(__kindof SJUIViewWorker *worker))block {
    NSAssert([cls isSubclassOfClass:[UIView class]], @"cls must be a subclass of UIView.");
    return [self ui_updateView:[cls new] block:block];
}

@end
