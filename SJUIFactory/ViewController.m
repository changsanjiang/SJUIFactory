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
   
    UIImageView *imageView = [SJUIImageViewFactory roundImageViewWithImageName:@"test"];
    imageView.csj_size = CGSizeMake(100, 100);
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    [SJUIFactory commonShadowWithView:imageView size:imageView.csj_size cornerRadius:50];
    
    imageView.layer.shadowColor = [UIColor redColor].CGColor;
    imageView.layer.shadowOpacity = 1;
    imageView.layer.shadowOffset = CGSizeMake(0.5, 0.5);
    imageView.layer.masksToBounds = NO;
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - View
- (void)sview {
    UIView *view = [UIView new];


    [self.view addSubview:view];
}


#pragma mark - label
- (void)slabel {
    UILabel *label = [UILabel new];
//    
//    label.csj_set(^(SJUILabelWorker * _Nonnull make) {
//        make.backgroundColor([UIColor orangeColor]);
//        make.text(@"人生若只如初见, 何事秋风悲画扇.").sizeToFit();
//        make.center(make.screen.center);
//    });
    
    [self.view addSubview:label];
    
}

#pragma mark - Button

- (void)sbutton {
    UIButton *btn = nil;
    
    
    [self.view  addSubview:btn];
}

@end
