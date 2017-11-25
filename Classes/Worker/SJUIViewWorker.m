//
//  SJUIViewWorker.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIViewWorker.h"
#import "SJUIFactoryHeader.h"

@interface SJUIViewWorker () {
    __kindof UIView *_view;
}
@end

@implementation SJUIViewWorker

- (instancetype)initWithView:(__kindof UIView *)view {
    self = [super init];
    if ( !self ) return nil;
    if ( [view isKindOfClass:[UILabel class]] ) self = [SJUILabelWorker new];
    else if ( [view isKindOfClass:[UIButton class]] ) self = [SJUIButtonWorker new];
    _view = view;
    return self;
}

- (instancetype)init {
    self = [super init];
    if ( !self ) return nil;
    _view = [UIView new];
    return self;
}

#pragma mark -
- (SJUIViewWorker *(^)(CGFloat))x {
    return ^SJUIViewWorker *(CGFloat x) {
        CGRect frame = _view.frame;
        frame.origin.x = x;
        _view.frame = frame;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGFloat))y {
    return ^SJUIViewWorker *(CGFloat y) {
        CGRect frame = _view.frame;
        frame.origin.y = y;
        _view.frame = frame;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGFloat))w {
    return ^SJUIViewWorker *(CGFloat w) {
        CGRect frame = _view.frame;
        frame.size.width = w;
        _view.frame = frame;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGFloat))h {
    return ^SJUIViewWorker *(CGFloat h) {
        CGRect frame = _view.frame;
        frame.size.height = h;
        _view.frame = frame;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGSize))size {
    return ^SJUIViewWorker *(CGSize size) {
        return self.w(size.width).h(size.height);
    };
}

- (SJUIViewWorker *(^)(CGFloat))centerX {
    return ^SJUIViewWorker *(CGFloat centerX) {
        CGPoint center = _view.center;
        center.x = centerX;
        _view.center = center;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGFloat))centerY {
    return ^SJUIViewWorker *(CGFloat centerY) {
        CGPoint center = _view.center;
        center.y = centerY;
        _view.center = center;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGPoint))center {
    return ^SJUIViewWorker *(CGPoint center) {
        return self.centerX(center.x).centerY(center.y);
    };
}

- (SJUIViewWorker *(^)(UIColor *))backgroundColor {
    return ^SJUIViewWorker *(UIColor *color) {
        _view.backgroundColor = color;
        return self;
    };
}

- (SJUIViewWorker *(^)(NSInteger))tag {
    return ^SJUIViewWorker *(NSInteger tag) {
        _view.tag = tag;
        return self;
    };
}

- (SJUIViewWorker *(^)(CGAffineTransform))transform {
    return ^SJUIViewWorker *(CGAffineTransform transform) {
        _view.transform = transform;
        return self;
    };
}

- (SJUIViewWorker *(^)(void))sizeToFit {
    return ^SJUIViewWorker *(void) {
        [_view sizeToFit];
        return self;
    };
}

/// 透明度
- (SJUIViewWorker *(^)(CGFloat))alpha {
    return ^SJUIViewWorker *(CGFloat alpha) {
        _view.alpha = alpha;
        return self;
    };
}

- (SJUIViewWorker * _Nonnull (^)(CGFloat))backgroundColorAlpha {
    return ^SJUIViewWorker *(CGFloat backgroundColorAlpha) {
        _view.backgroundColor = [_view.backgroundColor colorWithAlphaComponent:backgroundColorAlpha];
        return self;
    };
}

#pragma mark -
- (SJScreenWorker *)screen {
    return [SJScreenWorker shared];
}
@end
