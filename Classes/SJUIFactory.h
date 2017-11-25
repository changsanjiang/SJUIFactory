//
//  SJUIFactory.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SJUIViewWorker;

@interface SJUIFactory : NSObject

+ (__kindof UIView *)ui_updateView:(__kindof UIView *)view block:(void(^)(__kindof SJUIViewWorker *make))block;

+ (UIView *)ui_makeView:(void(^)(SJUIViewWorker *make))block;

+ (__kindof UIView *)ui_makeViewWithClass:(Class)cls block:(void(^)(__kindof SJUIViewWorker *make))block;

@end

NS_ASSUME_NONNULL_END
