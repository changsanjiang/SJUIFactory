# SJUIFactory

#### UIView
```Objective-C
- (void)sview {
    UIView *view = [UIView new];
    view.csj_set(^(__kindof SJUIViewWorker * _Nonnull make) {
        make.w(100).h(100).center(make.screen.center);
        make.backgroundColor([UIColor orangeColor]);
    });
    [self.view addSubview:view];
}
```
