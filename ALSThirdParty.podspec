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
  s.summary          = 'This is a short description of ALSThirdParty.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a long description of ALSThirdParty. This is a long description of ALSThirdParty.
                       DESC

  s.homepage         = 'https://github.com/AltairEven/ALSThirdParty'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AltairEven' => 'qianye.qy@alibaba-inc.com' }
    s.source           = { :git => 'https://github.com/AltairEven/ALSThirdParty.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.ios.source_files = 'ALSThirdParty/Classes/*.{h}'
  #s.ios.public_header_files = 'ALSThirdParty/Classes/*.{h}'
  s.ios.vendored_frameworks = 'ALSThirdParty/Frameworks/*.{framework}'
  s.ios.vendored_libraries = 'ALSThirdParty/Libs/*.{a}'
  s.ios.resources = 'ALSThirdParty/Assets/*.{png,jpg,bundle}'
  s.ios.frameworks = 'SystemConfiguration','CoreTelephony'
  s.ios.libraries = 'stdc++.6.0.9','c++','z.1.2.8','sqlite3.0'
end
