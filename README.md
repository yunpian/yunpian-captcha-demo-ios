# 云片行为验证 iOS Demo
***
提示：支持IOS版本8.0以上。

## 手动导入SDK
将YPCaptcha文件夹下的YPCaptchaSDK.framework、YPResources.bundle添加到工程中；

## pod方式添加SDK
```
pod 'YPCaptcha','~> 1.0.5'
```
***
## API使用说明
1. 初始化

 ```Objc
/**
/**
 初始化行为验证 SDK
 
 @param captchaId 后台分配的 captchaId
 */
+ (void)startWithCaptchaId:(NSString *)captchaId;
```

2. 行为验证

 ```Objc
/**
 行为验证
 
 @param configModel 配置选项
 @param loaded 动画验证加载完成回调
 @param success 验证成功回调
 @param fail 验证失败回调
 */
+ (void)verfiy:(YPConfigModel *)configModel onLoaded:(YPCallback)loaded onSuccess:(YPCallbackWithDic)success onFail:(YPCallbackWithDic)fail;
```

3. 获取版本号

 ```Objc
/**
 获取 SDK 版本号

 @return 版本号
 */
+ (NSString *)getSDKVersion;
```

