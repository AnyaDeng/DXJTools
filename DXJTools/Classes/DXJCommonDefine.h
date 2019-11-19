//
//  DXJCommonDefine.h
//  DXJTools
//
//  Created by dxj on 2019/11/19.
//  Copyright © 2019 AnyaDeng. All rights reserved.
//


#ifndef DXJCommonDefine_h
#define DXJCommonDefine_h

//*************************工程经常用宏定义*********************************

//获取屏幕 宽度、高度
#define kSCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define kSCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define kSCREEN ([UIScreen mainScreen].bounds)
#define iPhone6Adaptive_width(a) (CGFloat)a * kSCREEN_WIDTH / 375.0
#define iPhone6Adaptive_height(a) (CGFloat)a * kSCREEN_HEIGHT / 667.0
#define matchW (kSCREEN_WIDTH/375.0)
#define FitVaule(value) (value / 2)* matchW

/** 验证字符串的合法性 */
#define kVerifyStrLegal(obj) ((obj) && ![(obj) isKindOfClass:[NSNull class]] && ![obj isEqualToString:@"(null)"] && ![obj isEqualToString:@"<null>"] && ![obj isEqualToString:@"null"]  && [obj length] != 0)?1:0

// 状态栏高度
#define STATUS_BAR_HEIGHT (IS_IPHONE_X_UP ? 44.f : 20.f)
// 导航栏高度
#define NAVIGATION_BAR_HEIGHT (IS_IPHONE_X_UP ? 88.f : 64.f)
// tabBar高度
#define TAB_BAR_HEIGHT (IS_IPHONE_X_UP ? (49.f+34.f) : 49.f)

//block中要用到的self,用法直接调用WS（）括号内是别名
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

/** 字体 */
#define FitFontValue(value) [UIFont fontWithName:@"PingFangSC-Medium" size:FitVaule(value)]
#define Medium @"PingFangSC-Medium"
#define Semibold @"PingFangSC-Semibold"
#define Regular @"PingFangSC-Regular"
#define Light @"PingFangSC-Light"


/** 打印 */
#ifdef DEBUG

#define DLog(...) printf("%s: %s 第%d行: %s\n\n",[[NSString lr_stringDate] UTF8String], [LRString UTF8String] ,__LINE__, [[NSString stringWithFormat:__VA_ARGS__] UTF8String]);

#else

#define DLog(...)

#endif




#endif /* DXJCommonDefine_h */
