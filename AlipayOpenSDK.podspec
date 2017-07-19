Pod::Spec.new do |s|
  s.name                = "AlipayOpenSDK"
  s.version             = "15.4.0"
  s.summary             = "AlipaySDK on iOS."
  s.homepage            = "https://open.alipay.com"
  s.license             = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
  s.author              = { "Alipay" => "https://open.alipay.com" }
  s.platform            = :ios, "6.0"
  s.source              = { :git => "https://github.com/kingiol/AlipaySDK.git", :tag => "#{s.version}" }
  s.resources           = '**/*.bundle'

  s.subspec "AliPaySDK-Extend" do |ss|
    ss.source_files = "AliPaySDK-Extend"
    ss.subspec "Util" do |u|
      u.source_files = "AliPaySDK-Extend/Util"
    end
  end

  s.subspec "openssl" do |ss|
    ss.source_files = "AliPaySDK-Extend/openssl"
    ss.header_dir = "openssl"
  end

  s.vendored_frameworks = '**/*.framework'
  s.vendored_libraries  = 'AliPaySDK-Extend/libcrypto.a', 'AliPaySDK-Extend/libssl.a'
  s.public_header_files = "AlipaySDK.framework/Headers/**/*.h", "openssl/*.h"
  s.frameworks          = "CoreMotion", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "UIKit", "Foundation"
  s.libraries           = "z", "c++"
  s.requires_arc        = true
end
