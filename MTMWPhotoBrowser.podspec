#
# Be sure to run `pod lib lint MTMWPhotoBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTMWPhotoBrowser'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MTMWPhotoBrowser.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qiandashuai/MTMWPhotoBrowser.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1055263815@qq.com' => 'baofeng.qian@maitao.com' }
  s.source           = { :git => 'https://github.com/qiandashuai/MTMWPhotoBrowser.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MTMWPhotoBrowser/Classes/**/*'
  
   s.resource_bundles = {
     'MTMWPhotoBrowser' => ['MTMWPhotoBrowser/Assets/*.png']
   }

   s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3'
  s.dependency 'PINRemoteImage/iOS', '= 3.0.0-beta.13'
  s.dependency 'SDWebImage', '~> 5.0'
end
