Pod::Spec.new do |s|
  s.name                = "AlipayOpenSDK"
  s.version             = "15.5.0"
  s.summary             = "AlipaySDK on iOS."
  s.homepage            = "https://open.alipay.com"
  s.license             = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
  s.author              = { "Alipay" => "https://open.alipay.com" }
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/kingiol/AlipaySDK.git", :tag => "#{s.version}" }
  s.resources           = '**/*.bundle'
  s.vendored_frameworks = '**/*.framework'

  s.frameworks          = "CoreMotion", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "UIKit", "Foundation"

  s.public_header_files = "AlipaySDK.framework/Headers/**/*.h"

#  s.subspec 'AliPaySDK-Extend' do |ss|
#    ss.source_files = 'AliPaySDK-Extend/*.{h,m}'
#    ss.subspec 'Util' do |util|
#      util.source_files = 'AliPaySDK-Extend/Util/**/*.{h,m}'
#      util.dependency 'OpenSSL-Universal', '~> 1.0.2.10'
#      util.libraries = 'ssl', 'crypto'
#    end
#  end

  s.libraries = 'z', 'c++'
  s.requires_arc  = true

end