//
//  SJUILabelWorker.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUILabelWorker.h"

@interface SJUILabelWorker ()

@property (nonatomic, strong, readonly) UILabel *label;

@end

@implementation SJUILabelWorker

- (UILabel *)label {
    return self.view;
}

- (SJUILabelWorker *(^)(NSString *))text {
    return ^ SJUILabelWorker *(NSString *text) {
        self.label.text = text;
        return self;
    };
}

- (SJUILabelWorker *(^)(UIColor *))textColor {
    return ^ SJUILabelWorker *(UIColor *color) {
        self.label.textColor = color;
        return self;
    };
}

- (SJUILabelWorker *(^)(NSTextAlignment))align {
    return ^ SJUILabelWorker *(NSTextAlignment align) {
        self.label.textAlignment = align;
        return self;
    };
}

- (SJUILabelWorker *(^)(UIFont *))font {
    return ^ SJUILabelWorker *(UIFont *font) {
        self.label.font = font;
        return self;
    };
}

- (SJUILabelWorker *(^)(NSAttributedString *))attrStr {
    return ^ SJUILabelWorker *(NSAttributedString *attrStr) {
        self.label.attributedText = attrStr;
        return self;
    };
}

- (SJUILabelWorker *(^)(void (^)(SJAttributeWorker *)))attr {
    return ^ SJUILabelWorker *(void (^block)(SJAttributeWorker *make)) {
        self.attrStr([SJAttributesFactory producingWithTask:block]);
        return self;
    };
}
@end
