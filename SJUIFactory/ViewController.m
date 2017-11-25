//
//  ViewController.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "SJUIFactoryHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    [self button];
    
  
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)appendFormat:(NSString *)format, ... {
    
    [@"".mutableCopy appendFormat:@"ddd"];
    [@"".mutableCopy appendFormat:@"%zd", 2];
    [@"".mutableCopy appendFormat:@"%@", @3];
    [@"".mutableCopy appendFormat:@"%@", @"ddd"];
}


#pragma mark - View
- (void)sview {
    UIView *view = nil;
    
    view = [SJUIFactory ui_makeViewWithClass:[UIView class] block:^(SJUIViewWorker *worker) {
        worker.x(20).y(20).w(100).h(100).backgroundColor([UIColor orangeColor]);
    }];
    
    [self.view addSubview:view];
}


#pragma mark - label
- (void)slabel {
    UILabel *label = nil;
    label = [SJUIFactory ui_makeViewWithClass:[UILabel class] block:^(__kindof SJUIViewWorker * _Nonnull worker) {
        worker.x(20).y(130).backgroundColor([UIColor orangeColor]);
    }];
    
    [SJUIFactory ui_updateView:label block:^(SJUILabelWorker * _Nonnull worker) {
        worker
        .font([UIFont systemFontOfSize:18])
        .attr(^(SJAttributeWorker *make) {
            make.insert(@"人生若只如初见, 何事秋风悲画扇.", 0);
            make.font([UIFont boldSystemFontOfSize:18]).fontColor([UIColor yellowColor]);
        })
        .sizeToFit();
    }];
    
    [self.view addSubview:label];
    
}

#pragma mark - Button

- (void)button {
    UIButton *btn = nil;
    btn = [SJUIFactory ui_updateView:[UIButton new] block:^(SJUIButtonWorker * _Nonnull worker) {
        worker.x(20).y(20).backgroundColor([UIColor orangeColor]);
        worker.state(UIControlStateNormal, ^(SJUIButtonCarrier * _Nonnull car) {
            car.title(@"Test Test").titleColor([UIColor yellowColor]);
        });
        worker.sizeToFit();
    }];
    
    [self.view  addSubview:btn];
}

@end
