Pod::Spec.new do |s|
    s.name             = 'ExpoSeaartTrack'
    s.version          = '0.1.0'
    s.summary          = 'A Swift wrapper for SUReportDataSDK'
  
    s.description      = <<-DESC
    This is a Swift wrapper for SUReportDataSDK, providing an easy-to-use Swift interface for the original Objective-C SDK.
                         DESC
  
    s.homepage         = 'https://github.com/YourGithubUsername/ExpoSeaartTrack'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Your Name' => 'your.email@example.com' }
    s.source           = { :git => 'https://github.com/YourGithubUsername/ExpoSeaartTrack.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '11.0'
    s.swift_version = '5.0'
    
    s.source_files = 'ExpoSeaartTrack/Classes/**/*'
    s.vendored_frameworks = 'ExpoSeaartTrack/Frameworks/SUReportDataSDK.xcframework'
    
    s.static_framework = true
    
    s.pod_target_xcconfig = {
      'GCC_ENABLE_OBJC_EXCEPTIONS' => 'YES',
      'CLANG_ENABLE_OBJC_ARC' => 'YES',
      'SWIFT_VERSION' => '5.0',
      'SWIFT_INSTALL_OBJC_HEADER' => 'YES',
      'SWIFT_OBJC_INTERFACE_HEADER_NAME' => 'ExpoSeaartTrack-Swift.h',
      'PRODUCT_MODULE_NAME' => 'ExpoSeaartTrack',
      'SWIFT_COMPILATION_MODE' => 'wholemodule'
    }
  end