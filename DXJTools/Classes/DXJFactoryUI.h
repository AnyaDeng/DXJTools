//
//  DXJFactoryUI.h
//  DXJTools_Example
//
//  Created by dxj on 2019/11/18.
//  Copyright © 2019 AnyaDeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>
typedef void(^callBack)(MASConstraintMaker *make);

@interface DXJFactoryUI : NSObject

+ (UIImageView *)createImageViewWithView:(UIView *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback;

+ (UILabel *)createLabelWithtextFont:(NSInteger)font fontName:(NSString *)fontName textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback ;

+ (UILabel *)createLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback;

+ (UIView *)createViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UIView *)superView andBlock:(callBack)callback;

+(UITextField *)createTextFieldWithtextFont:(NSInteger)textFont  withSuperView:(UIView *)backGroundView text:(NSString *)text placeHolder:(NSString *)placeHolder withBlock:(callBack)callBack;


+(UITextView *)createTextViewWithtextFont:(NSInteger)textFont textColor:(UIColor *)textColor withSuperView:(UIView *)backGroundView text:(NSString *)text  withBlock:(callBack)callBack;

+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack;

+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont title:(NSString *)title titleColor:(UIColor *)titleColor titleEdegeside:(UIEdgeInsets )edge backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView imageWithName:(NSString *)imageName target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack;
//创建cell的UI控件时 使用
+ (UIImageView *)AtCellcreateImageViewWithView:(UITableViewCell *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback;

+ (UILabel *)AtCellcreateLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UITableViewCell *)backGroundView text:(NSString *)text withBlock:(callBack)callback;

+ (UIView *)AtCellcreateViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UITableViewCell *)superView andBlock:(callBack)callback;

+ (UIButton *)AtCellcreateButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UITableViewCell *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack;

@end


