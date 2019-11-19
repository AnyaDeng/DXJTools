//
//  DXJFactoryUI.m
//  DXJTools_Example
//
//  Created by dxj on 2019/11/18.
//  Copyright © 2019 AnyaDeng. All rights reserved.
//

#import "DXJFactoryUI.h"
#import "UIImageView+WebCache.h"
#import "DXJCommonDefine.h"

@implementation DXJFactoryUI

/**
 *  带有masonry 的imageview
 */
+ (UIImageView *)createImageViewWithView:(UIView *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback{
    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.image = [UIImage imageNamed:imageName];
    [imageView sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:imageName]];
    [backGroundView addSubview:imageView];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = cornerNum;
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
            
        }
    }];
    return imageView;
}

/**
 
 带有masonry的label封装 指定具体字体
 
 */
+ (UILabel *)createLabelWithtextFont:(NSInteger)font fontName:(NSString *)fontName textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = [UIFont fontWithName:fontName size:FitVaule(font)];
    label.textColor = textColor;
    [backGroundView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

/**
 
 带有masonry的label封装
 
 */
+ (UILabel *)createLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FitFontValue(font);
    label.textColor = textColor;
    [backGroundView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}


/**
 uiview的封装
 */
+ (UIView *)createViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UIView *)superView andBlock:(callBack)callback {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = backGroundColor;
    view.clipsToBounds = YES;
    view.layer.cornerRadius = cornerRadius;
    [superView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    return view;
}

/**
 *  textField 带有masory的封装
 */
+(UITextField *)createTextFieldWithtextFont:(NSInteger)textFont  withSuperView:(UIView *)backGroundView text:(NSString *)text placeHolder:(NSString *)placeHolder withBlock:(callBack)callBack{
    UITextField *textField = [[UITextField alloc] init];
    textField.text = text;
    textField.font = FitFontValue(textFont);
    textField.placeholder = placeHolder;
    [backGroundView addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    
    return textField;
}
/**
 *  textView 带有masory的封装
 */

+(UITextView *)createTextViewWithtextFont:(NSInteger)textFont textColor:(UIColor *)textColor withSuperView:(UIView *)backGroundView text:(NSString *)text  withBlock:(callBack)callBack {
    UITextView *textView = [[UITextView alloc] init];
    textView.text = text;
    textView.textColor = textColor;
    textView.font = FitFontValue(textFont);
    
    [backGroundView addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    
    return textView;
}

/**
 UIbutton masonry
 
 */
+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [backGroundView addSubview:button];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = FitFontValue(titleFont);
    button.backgroundColor = backGroundColor;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.clipsToBounds = YES;
    button.layer.cornerRadius = cornerRadius;
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}
/**
 UIbutton 带有图片,文字,以及文字偏移
 */
+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont title:(NSString *)title titleColor:(UIColor *)titleColor titleEdegeside:(UIEdgeInsets )edge backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView imageWithName:(NSString *)imageName target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [backGroundView addSubview:button];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = FitFontValue(titleFont);
    button.backgroundColor = backGroundColor;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    if (![imageName isEqualToString:@""]&&imageName) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    button.clipsToBounds = YES;
    button.layer.cornerRadius = cornerRadius;
    [button setTitleEdgeInsets:edge];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}
//创建cell的UI控件时 使用
+ (UIImageView *)AtCellcreateImageViewWithView:(UITableViewCell *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback;
{
    UIImageView *imageView = [[UIImageView alloc] init];
    //    imageView.image = [UIImage imageNamed:imageName];
    [imageView sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:imageName]];
    [backGroundView.contentView addSubview:imageView];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = cornerNum;
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    return imageView;
}

+ (UILabel *)AtCellcreateLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UITableViewCell *)backGroundView text:(NSString *)text withBlock:(callBack)callback{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FitFontValue(font);
    label.textColor = textColor;
    [backGroundView.contentView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

+ (UIView *)AtCellcreateViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UITableViewCell *)superView andBlock:(callBack)callback{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = backGroundColor;
    view.clipsToBounds = YES;
    view.layer.cornerRadius = cornerRadius;
    [superView.contentView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    return view;
}

+ (UIButton *)AtCellcreateButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UITableViewCell *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [backGroundView.contentView addSubview:button];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = FitFontValue(titleFont);
    button.backgroundColor = backGroundColor;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.clipsToBounds = YES;
    button.layer.cornerRadius = cornerRadius;
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
