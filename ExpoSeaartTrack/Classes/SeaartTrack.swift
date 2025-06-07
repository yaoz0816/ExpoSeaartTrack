import Foundation
import SUReportDataSDK

@objc public class SeaartTrack: NSObject {

    @objc public static let shared = SeaartTrack()

    private override init() {
        super.init()
    }

    /// 初始化 SDK
    /// - Parameters:
    ///   - appId: 应用ID
    ///   - channel: 渠道
    @objc public func initializeSDK(appId: String, channel: String) {
        // 调用原始 SDK 的初始化方法
        
        SUReportDataSDK.initialize(withAppId: appId, channel: channel)
    }

    /// 设置用户ID
    /// - Parameter userId: 用户ID
    @objc public func setUserId(_ userId: String?) {
        SUReportDataSDK.setUserId(userId)
    }

    /// 上报自定义事件
    /// - Parameters:
    ///   - eventId: 事件ID
    ///   - properties: 事件属性
    @objc public func trackEvent(_ eventId: String, properties: [String: Any]? = nil) {
        SUReportDataSDK.track(eventId, properties: properties)
    }

    /// 设置用户属性
    /// - Parameter properties: 用户属性
    @objc public func setUserProperties(_ properties: [String: Any]) {
        SUReportDataSDK.setUserProperties(properties)
    }

    /// 获取设备ID
    @objc public func getDeviceId() -> String? {
        return SUReportDataSDK.deviceId()
    }
}
