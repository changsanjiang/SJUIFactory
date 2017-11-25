//
//  SJScreenWorker.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJScreenWorker.h"

@interface SJScreenWorker () {
    CGRect _rect;
}

@end

@implementation SJScreenWorker

+ (instancetype)shared {
    static id _instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [self new];
    });
    return _instance;
}

- (instancetype)init {
    self = [super init];
    if ( !self ) return nil;
    [self update];
    return self;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (CGPoint)center {
    return CGPointMake(self.size.width * 0.5, self.size.height * 0.5);
}

- (CGSize)size {
    return _rect.size;
}

- (CGRect)bounds {
    return _rect;
}

- (CGFloat)min {
    return MIN(self.size.width, self.size.height);
}

- (CGFloat)max {
    return MAX(self.size.width, self.size.height);
}

- (void)update {
    _rect = [UIScreen mainScreen].bounds;
}
@end
