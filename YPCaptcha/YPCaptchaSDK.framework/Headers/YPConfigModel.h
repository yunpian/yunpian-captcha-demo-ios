//
//  YPConfigModel.h
//  YPVerifySDK
//
//  Created by daizq on 2019/4/16.
//  Copyright © 2019 daizq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YPLangPackModel : NSObject

@property (nonatomic, copy) NSString *YPcaptcha_02; // 默认：请按顺序点击:
@property (nonatomic, copy) NSString *YPcaptcha_03; // 默认：向右拖动滑块填充拼图
@property (nonatomic, copy) NSString *YPcaptcha_04; // 默认：验证失败，请重试

@end

@interface YPConfigModel : NSObject

/**
 请求验证码过期时限。单位秒，默认 30
 */
@property (nonatomic, assign) NSInteger expired;

/**
 支持语言，默认简体中文。zh-cn(简体中文)、en(英文)
 */
@property (nonatomic, copy) NSString *lang;

/**
 验证码语言包。当设置 langPack 后 lang 设置会自动失效。
 */
@property (nonatomic, strong) YPLangPackModel *langPack;

/**
 验证码位置，默认居中，默认宽度为：屏幕宽度 * 4/5，宽度最小为 230。默认高度为：宽度/2 + 110。
 */
@property (nonatomic, assign) CGRect frame;

/**
 视图透明度。默认 0.3
 */
@property (nonatomic, assign) float alpha;

/**
 视图背景颜色
 */
@property (nonatomic, strong) UIColor *color;

/**
 是否显示加载指示器。默认显示
 */
@property (nonatomic, assign) BOOL showLoadingView;

/**
 添加无感验证参数
*/
@property (nonatomic, assign) NSString *username;

@end

NS_ASSUME_NONNULL_END
