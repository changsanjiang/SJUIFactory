//
//  SJUIButtonWorker.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIButtonWorker.h"

@interface SJUIButtonWorker () {
    SJUIButtonCarrier *_normalCar;
}
@property (nonatomic, strong, readonly) UIButton *button;
@property (nonatomic, strong, readonly) SJUIButtonCarrier *normalCar;
@end

@implementation SJUIButtonWorker

- (UIButton *)button {
    return self.view;
}

- (SJUIButtonWorker * _Nonnull (^)(UIControlState, void (^ _Nonnull)(SJUIButtonCarrier * _Nonnull)))state {
    return ^ SJUIButtonWorker *(UIControlState state, void(^block)(SJUIButtonCarrier *car)) {
        block([[SJUIButtonCarrier alloc] initWithButton:self.button state:state]);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(NSString * _Nonnull))title {
    return ^ SJUIButtonWorker *(NSString *title) {
        self.normalCar.title(title);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(UIColor * _Nonnull))titleColor {
    return ^ SJUIButtonWorker *(UIColor *color) {
        self.normalCar.titleColor(color);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(UIColor * _Nonnull))titleShadowColor {
    return ^ SJUIButtonWorker *(UIColor *color) {
        self.normalCar.titleShadowColor(color);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^ SJUIButtonWorker *(UIImage *image) {
        self.normalCar.image(image);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(UIImage * _Nonnull))backgroundImage {
    return ^ SJUIButtonWorker *(UIImage *image) {
        self.normalCar.backgroundImage(image);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(NSAttributedString * _Nonnull))attrStr {
    return ^SJUIButtonWorker *(NSAttributedString *attrStr) {
        self.normalCar.attrStr(attrStr);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(void (^ _Nonnull)(SJAttributeWorker * _Nonnull)))attr {
    return ^SJUIButtonWorker *(void(^block)(SJAttributeWorker *worker)) {
        self.normalCar.attr(block);
        return self;
    };
}

- (SJUIButtonWorker * _Nonnull (^)(id _Nonnull, SEL _Nonnull))event {
    return ^SJUIButtonWorker *(id target, SEL sel) {
        [self.button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

- (SJUIButtonCarrier *)normalCar {
    if ( _normalCar ) return _normalCar;
    _normalCar = [[SJUIButtonCarrier alloc] initWithButton:self.button state:UIControlStateNormal];
    return _normalCar;
}
@end


#pragma mark -
@interface SJUIButtonCarrier () {
    UIButton *_button;
    UIControlState _state;
}
@end

@implementation SJUIButtonCarrier

- (instancetype)initWithButton:(UIButton *)btn state:(UIControlState)state {
    self = [super init];
    if ( !self ) return nil;
    _button = btn;
    _state = state;
    return self;
}

- (SJUIButtonCarrier * _Nonnull (^)(NSString * _Nonnull))title {
    return ^SJUIButtonCarrier *(NSString *title) {
        [_button setTitle:title forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(UIColor * _Nonnull))titleColor {
    return ^SJUIButtonCarrier *(UIColor *color) {
        [_button setTitleColor:color forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(UIColor * _Nonnull))titleShadowColor {
    return ^SJUIButtonCarrier *(UIColor *color) {
        [_button setTitleShadowColor:color forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^SJUIButtonCarrier *(UIImage *image) {
        [_button setImage:image forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(UIImage * _Nonnull))backgroundImage {
    return ^SJUIButtonCarrier *(UIImage *image) {
        [_button setBackgroundImage:image forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(NSAttributedString * _Nonnull))attrStr {
    return ^SJUIButtonCarrier *(NSAttributedString *attrStr) {
        [_button setAttributedTitle:attrStr forState:_state];
        return self;
    };
}

- (SJUIButtonCarrier * _Nonnull (^)(void (^ _Nonnull)(SJAttributeWorker * _Nonnull)))attr {
    return ^SJUIButtonCarrier *(void(^block)(SJAttributeWorker *worker)) {
        [SJAttributesFactory producingWithTask:block];
        return self;
    };
}
@end
