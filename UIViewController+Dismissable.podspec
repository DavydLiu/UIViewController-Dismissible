#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "UIViewController+Dismissable"
  s.version          = '0.1.0'
  s.summary          = "Let any modally presented view to be able to be dismissed by touching outside of it."
  s.description      = <<-DESC
                      Use it by including head file and adding 
                      [self.view.window addGestureRecognizer:self.tapBehindGesture];
                      in viewDidAppear:
                      [self.view.window removeGestureRecognizer:self.tapBehindGesture];
                      in viewWillDisappear:
                       DESC
  s.homepage         = "https://github.com/DavydLiu/UIViewController-Dismissable"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Xingruo Liu" => "xingruo.liu@gmail.com" }
  s.source           = { :git => "https://github.com/DavydLiu/UIViewController-Dismissable.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/DavydLiu'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'UIViewController+Dismissable/*'
  # s.resources = 'Assets/*.png'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
