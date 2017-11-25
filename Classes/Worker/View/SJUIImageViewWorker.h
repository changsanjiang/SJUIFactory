//
//  SJUIImageViewWorker.h
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIViewWorker.h"

@interface SJUIImageViewWorker : SJUIViewWorker

@property (nonatomic, copy, readonly) SJUIImageViewWorker *(^image)(UIImage *image);

@end
