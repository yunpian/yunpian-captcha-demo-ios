//
//  YPVerifySDK.h
//  YPVerifySDK
//
//  Created by daizq on 2019/4/16.
//  Copyright © 2019 daizq. All rights reserved.
//  Version: 1.0.0
//

#import "YPConfigModel.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^YPCallback)(void);
typedef void (^YPCallbackWithDic)(NSDictionary *validInfo);

@interface YPCaptchaSDK : NSObject

/**
 初始化行为验证 SDK
 
 @param captchaId 后台分配的 captchaId
 */
+ (void)startWithCaptchaId:(NSString *)captchaId;

/**
 行为验证
 
 @param configModel 配置选项
 @param loaded 动画验证加载完成回调
 @param success 验证成功回调
 @param fail 验证失败回调
 */
+ (void)verfiy:(YPConfigModel *)configModel onLoaded:(YPCallback)loaded onSuccess:(YPCallbackWithDic)success onFail:(YPCallbackWithDic)fail;

/**
 获取 SDK 版本号

 @return 版本号
 */
+ (NSString *)getSDKVersion;

@end

NS_ASSUME_NONNULL_END
