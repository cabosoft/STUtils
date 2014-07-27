Pod::Spec.new do |s|
  s.name         = "STUtils"
  s.version      = "0.0.1"
  s.summary      = "Various useful Objective-C code."
  s.homepage     = "https://github.com/cabosoft/STUtils"
  s.author       = 'Buzz Andersen'
  s.source       = { :git => "https://github.com/cabosoft/STUtils.git", :branch => 'master' }
  s.requires_arc = false

  s.subspec 'Additions' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Additions/*.{h,m}'
  end

  s.subspec 'Misc' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Misc/*.{h,m}'
  end

  s.subspec 'Resources' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Resources/*.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = 'Security/*.{h,m}'
  end

  s.subspec 'iOS' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files = "iOS/Additions/*.{h,m,mm}", "iOS/UIKit/*.{h,m,mm}"
  end

end
