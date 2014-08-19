Pod::Spec.new do |s|
  s.name         = "STUtils"
  s.version      = "1.0.2"
  s.summary      = "Various useful Objective-C code."
  s.homepage     = "https://github.com/cabosoft/STUtils"
  s.author       = 'Buzz Andersen'
  s.source       = { :git => "https://github.com/cabosoft/STUtils.git", :tag => 'podspec-1.0.2' }
  s.requires_arc = false
  s.ios.deployment_target = '7.0'

  s.subspec 'Core' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = '*.{h,m}'
    ss.dependency 'STUtils/Additions'
    ss.dependency 'STUtils/Misc'
    ss.dependency 'STUtils/Security'
    # ss.dependency 'STUtils/iOS'
  end

  s.subspec 'Additions' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Additions/*.{h,m}'
    ss.dependency 'STUtils/Misc'
  	ss.resources = 'Resources/*'
  end

  s.subspec 'Misc' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Misc/*.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Security/*.{h,m}'
  end

  # s.subspec 'iOS' do |ss|
  #   ss.ios.deployment_target = '7.0'
  #   ss.source_files = "iOS/Additions/*.{h,m,mm}", "iOS/UIKit/*.{h,m,mm}"
  # end

end
