//
//  SJScreenWorker.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJScreenWorker : NSObject

+ (instancetype)shared;

@property (nonatomic, assign, readonly) CGFloat centerX;
@property (nonatomic, assign, readonly) CGFloat centerY;
@property (nonatomic, assign, readonly) CGPoint center;
@property (nonatomic, assign, readonly) CGSize size;
@property (nonatomic, assign, readonly) CGRect bounds;
@property (nonatomic, assign, readonly) CGFloat min;
@property (nonatomic, assign, readonly) CGFloat max;

- (void)update;

@end
