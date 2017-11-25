//
//  SJUIButtonWorker.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIViewWorker.h"
#import <SJAttributesFactory/SJAttributesFactoryHeader.h>

NS_ASSUME_NONNULL_BEGIN

@class SJUIButtonCarrier;

@interface SJUIButtonWorker : SJUIViewWorker

@property (nonatomic, copy, readonly) SJUIButtonWorker *(^state)(UIControlState state, void(^block)(SJUIButtonCarrier *car));

@property (nonatomic, copy, readonly) SJUIButtonWorker *(^title)(NSString *title); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^titleColor)(UIColor *color); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^titleShadowColor)(UIColor *color); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^image)(UIImage *image); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^backgroundImage)(UIImage *image); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^attrStr)(NSAttributedString *attrStr); // state will be use UIControlStateNormal.
@property (nonatomic, copy, readonly) SJUIButtonWorker *(^attr)(void(^maker)(SJAttributeWorker *attr)); // state will be use UIControlStateNormal.


@property (nonatomic, copy, readonly) SJUIButtonWorker *(^event)(id target, SEL sel); // event will be use UIControlEventTouchUpInside.

@end


@interface SJUIButtonCarrier : NSObject
- (instancetype)initWithButton:(UIButton *)btn state:(UIControlState)state;
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^title)(NSString *title);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^titleColor)(UIColor *color);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^titleShadowColor)(UIColor *color);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^image)(UIImage *image);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^backgroundImage)(UIImage *image);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^attrStr)(NSAttributedString *attrStr);
@property (nonatomic, copy, readonly) SJUIButtonCarrier *(^attr)(void(^maker)(SJAttributeWorker *attr));
@end

NS_ASSUME_NONNULL_END
