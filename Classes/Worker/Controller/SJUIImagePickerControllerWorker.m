//
//  SJUIImagePickerControllerWorker.m
//  SJUIFactory
//
//  Created by BlueDancer on 2017/11/25.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJUIImagePickerControllerWorker.h"

@implementation SJUIImagePickerControllerWorker

- (void)alterPickerViewControllerWithController:(UIViewController *)controller
                                     alertTitle:(NSString *)title
                                            msg:(NSString *)msg
                                   photoLibrary:(void(^)(UIImage *selectedImage))photoLibraryBlock
                                         camera:(void(^)(UIImage *selectedImage))cameraBlock {
//    NSMutableArray<NSString *> *titlesM = [NSMutableArray new];
//    NSMutableArray<void(^)(void)> *actionsM = [NSMutableArray new];
//
//    // 拍照
//    if ( [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] ) {
//        [titlesM addObject:@"拍照"];
//        [actionsM addObject:^{
//            UIImagePickerController *pickerController = [UIImagePickerController new];
//            pickerController.delegate = self;
//            pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
//            pickerController.didFinishPickingImageCallBlock = ^(UIImage *selectedImage) {
//                if ( cameraBlock ) cameraBlock(selectedImage);
//            };
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [controller presentViewController:pickerController animated:YES completion:nil];
//            });
//        }];
//    }
//
//    // 相册
//    [titlesM addObject:@"相册"];
//    [actionsM addObject:^ {
//        UIImagePickerController *pickerController = [UIImagePickerController new];
//        pickerController.delegate = self;
//        pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//        pickerController.didFinishPickingImageCallBlock = ^(UIImage *selectedImage) {
//            if ( photoLibraryBlock ) photoLibraryBlock(selectedImage);
//        };
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [controller presentViewController:pickerController animated:YES completion:nil];
//        });
//    }];
//
//
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleActionSheet];
//
//    // actions
//    [titlesM enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        UIAlertAction *action = [UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//            actionsM[idx]();
//        }];
//        [alertController addAction:action];
//    }];
//
//    // cancel
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    [alertController addAction:cancelAction];
//
//    dispatch_async(dispatch_get_main_queue(), ^{
//        //if iPhone
//        if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ) {
//            [controller presentViewController:alertController animated:YES completion:nil];
//        }
//        //if iPad
//        else {
//            // Change Rect to position Popover
//            UIPopoverPresentationController *popPresenter = [alertController popoverPresentationController];
//            popPresenter.sourceView = [UIApplication sharedApplication].keyWindow;
//            popPresenter.sourceRect = CGRectMake(0, [UIApplication sharedApplication].keyWindow.csj_h, [UIApplication sharedApplication].keyWindow.csj_w, 0);
//            popPresenter.permittedArrowDirections = UIPopoverArrowDirectionDown;
//            [controller presentViewController:alertController animated:YES completion:nil];
//        }
//    });
}

#pragma mark Image Picker Controller Delegate Methods
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
//    [picker dismissViewControllerAnimated:YES completion:^{
//        UIImage *imageOriginal = [info objectForKey:UIImagePickerControllerOriginalImage];
//        if ( picker.didFinishPickingImageCallBlock ) picker.didFinishPickingImageCallBlock(imageOriginal);
//    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
//    [picker dismissViewControllerAnimated:YES completion:nil];
}
@end
