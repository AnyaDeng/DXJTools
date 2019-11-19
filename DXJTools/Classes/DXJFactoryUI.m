//
//  DXJFactoryUI.m
//  DXJTools_Example
//
//  Created by dxj on 2019/11/18.
//  Copyright © 2019 AnyaDeng. All rights reserved.
//

#import "DXJFactoryUI.h"
#import "UIImageView+WebCache.h"

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

@end
