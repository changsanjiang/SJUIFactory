//
//  SJUIViewWorker.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SJScreenWorker;

@interface SJUIViewWorker : NSObject

- (instancetype)initWithView:(__kindof UIView *)view;

@property (nonatomic, strong, readonly) __kindof UIView *view;


@property (nonatomic, copy, readonly) SJUIViewWorker *(^x)(CGFloat x);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^y)(CGFloat y);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^w)(CGFloat w);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^h)(CGFloat h);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^size)(CGSize size);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^centerX)(CGFloat centerX);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^centerY)(CGFloat centerY);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^center)(CGPoint center);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^backgroundColor)(UIColor *color);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^tag)(NSInteger tag);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^transform)(CGAffineTransform transform);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^sizeToFit)(void);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^alpha)(CGFloat alpha);
@property (nonatomic, copy, readonly) SJUIViewWorker *(^backgroundColorAlpha)(CGFloat alpha);


#pragma mark - Screen
@property (nonatomic, copy, readonly) SJScreenWorker *screen;

@end

NS_ASSUME_NONNULL_END
