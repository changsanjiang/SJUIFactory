//
//  SJUILabelWorker.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIViewWorker.h"
#import <SJAttributesFactory/SJAttributesFactoryHeader.h>

@interface SJUILabelWorker : SJUIViewWorker

@property (nonatomic, copy, readonly) SJUILabelWorker *(^text)(NSString *text);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^align)(NSTextAlignment alignment);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^font)(UIFont *font);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^attrStr)(NSAttributedString *attrStr);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^attr)(void(^maker)(SJAttributeWorker *attr));
@property (nonatomic, copy, readonly) SJUILabelWorker *(^numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) SJUILabelWorker *(^maxLayoutWidth)(CGFloat width);

@end
