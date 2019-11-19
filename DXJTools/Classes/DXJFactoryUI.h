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

@end


