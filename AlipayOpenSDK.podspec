Pod::Spec.new do |s|
  s.name                = "AlipayOpenSDK"
  s.version             = "15.4.0"
  s.summary             = "AlipaySDK on iOS."
  s.homepage            = "https://open.alipay.com"
  s.license             = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
  s.author              = { "Alipay" => "https://open.alipay.com" }
  s.platform            = :ios, "7.0"
  s.source              = { :git => "https://github.com/kingiol/AlipaySDK.git", :tag => "#{s.version}" }
  s.resources           = '**/*.bundle'
  s.vendored_frameworks = '**/*.framework'

  s.frameworks          = "CoreMotion", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "UIKit", "Foundation"
  s.libraries           = "z", "c++"
  s.requires_arc        = true

  s.source_files   = 'AliPaySDK-Extend/*.{h,m}'

  s.public_header_files = "AlipaySDK.framework/Headers/**/*.h"

  s.subspec 'Util' do |util|
    util.source_files = "AliPaySDK-Extend/Util/**/*.{h,m}"
    util.dependency 'openssl'
  end

  s.subspec 'openssl' do |ss|
    ss.source_files = "AliPaySDK-Extend/openssl/**/*.h"
    ss.public_header_files = "AliPaySDK-Extend/openssl/**/*.h"
    ss.ios.vendored_libraries = "AliPaySDK-Extend/libcrypto.a", "AliPaySDK-Extend/libssl.a" 
    ss.libraries = 'ssl', 'crypto'
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/AliPaySDK-Extend/openssl/**" }
  end

end
