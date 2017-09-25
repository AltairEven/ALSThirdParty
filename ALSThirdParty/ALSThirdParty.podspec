#
# Be sure to run `pod lib lint ALSThirdParty.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ALSThirdParty'
  s.version          = '0.0.1'
  s.summary          = 'This is a ALSThirdParty.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a long description of ALSThirdParty
                       DESC

  s.homepage         = 'https://github.com/AltairEven/ALSThirdParty.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AltairEven' => 'qianye.qy@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/AltairEven/ALSThirdParty.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
  core.source_files = 'ALSThirdParty/Classes/**/*'
  core.public_header_files = 'ALSThirdParty/Classes/**/*.h'
  core.resources = "ALSThirdParty/Classes/*.bundle"
  core.frameworks = "CoreTelephony","SystemConfiguration"
  core.ios.library = 'stdc++.6.0.9','c++','z.1.2.8','sqlite3.0'
  core.xcconfig = {'OTHER_LDFLAGS' => '-ObjC',
  'ENABLE_BITCODE' => 'NO'}
  core.vendored_frameworks = "ALSThirdParty/Classes/**/*.framework"
  core.vendored_libraries = "ALSThirdParty/Classes/**/*.a"
  end

  #s.pod_target_xcconfig = {
  #  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/AlipaySDKIniOS',
  #  'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  #}

  #s.vendored_frameworks = "ALSThirdParty/Classes/*.{framework}","ALSThirdParty/Classes/**/*.{framework}"
  #s.public_header_files = "ALSThirdParty/Classes/**/*.h"
  #s.source_files = "ALSThirdParty/Classes/**/*.h"
  #s.vendored_libraries = "ALSThirdParty/Classes/*.{a}","ALSThirdParty/Classes/**/*.{a}"
  #s.resources = "ALSThirdParty/Classes/*.bundle","ALSThirdParty/Classes/**/*.bundle"
  #s.frameworks = 'SystemConfiguration','CoreTelephony'
  #s.libraries = 'stdc++.6.0.9','c++','z.1.2.8','sqlite3.0'
end
