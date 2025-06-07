//
//  SUReportDataSDK.h
//  SUReportDataSDK
//
//  Created by iamgang on 2023/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#if !__has_include(<SUMiddleUnityInterface.h>) && !__has_include("SUMiddleUnityInterface.h")

#if defined(_cplusplus)
extern "C"{
#endif

    extern void star_sdk_nativeInitDataSdk(const char * baseUrl, const char * secretId, const char * appSecret, const char * aesKey, const char * distinctId);

    extern void star_sdk_native_doEvent(const char * eventName, const char * eventValue);

    extern void star_sdk_dot_updateRoleInfo(const char *  languageCode,
                                            const char *  sdkAccountId,
                                            const char *  cpAccountId,
                                            const char *  playerId,
                                            const char *  serverId,
                                            const char *  nickName,
                                            const char *  headBase64,
                                            const char *  deviceId);

#if defined(_cplusplus)
}
#endif

#endif


@interface SUReportDataSDK : NSObject

/// 初始化sdk - json配置用这个
/// - Parameters:
///   - distinctId: 访客 ID
+ (void)initWithDistinctId:(NSString *)distinctId;

/// 初始化sdk - 非json配置用这个
///   - baseURL: 服务器地址
///   - secretKey: 签名秘钥Key
///   - aesSecret: AES秘钥
///   - showLog: 是否控制台打印
+ (void)initWithAppKey:(NSString *)appKey
            distinctId:(NSString *)distinctId
               baseURL:(NSString *)baseURL
             secretKey:(NSString *)secretKey
             aesSecret:(NSString *)aesSecret;

/// 设置账号信息
/// - Parameters:
///   - accountId: accountId description
///   - playerId: playerId description
///   - serverId: serverId description
+ (void)updateRoleInfoWithAccountId:(NSString *)accountId playerId:(NSString *)playerId serverId:(NSString *)serverId;

/// 上报事件
/// - Parameters:
///   - eventName: 事件名, 禁止使用`st_`开头, `st_`为预留字段头
///   - eventData: 事件- json字典或json字符串
+ (void)reportWithEventName:(NSString *)eventName
                  eventData:(nullable id)eventData;

/// 上报事件
/// - Parameters:
///   - eventData: 事件
+ (void)reportUserDataWithEventData:(id)eventData;

@end

NS_ASSUME_NONNULL_END
