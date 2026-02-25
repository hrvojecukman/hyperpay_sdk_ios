Pod::Spec.new do |s|
  s.name             = 'hyperpay_sdk_ios'
  s.version          = '7.4.0'
  s.summary          = 'HyperPay OPPWA Mobile SDK v7.4.0 XCFrameworks for iOS.'
  s.description      = <<-DESC
Vendored XCFrameworks for the HyperPay (OPPWA) Mobile SDK v7.4.0.
Includes OPPWAMobile and ipworks3ds_sdk_deploy (3DS2) frameworks.
                       DESC
  s.homepage         = 'https://github.com/hrvojecukman/hyperpay_sdk_ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hrvoje Cukman' => 'hrvojecukman@gmail.com' }
  s.source           = { :git => 'https://github.com/hrvojecukman/hyperpay_sdk_ios.git', :tag => s.version.to_s }

  s.platform         = :ios, '13.0'
  s.requires_arc     = true
  s.static_framework = true

  s.vendored_frameworks = [
    'OPPWAMobile.xcframework',
    'ipworks3ds_sdk_deploy_9373.xcframework'
  ]
end
