Pod::Spec.new do |spec|
  spec.name         = 'IKCore'
  spec.version      = '1.2'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/iankeen82/'
  spec.authors      = { 'Ian Keen' => 'iankeen82@gmail.com' }
  spec.summary      = 'Small utilities mostly used as dependencies in other projects.'
  spec.source       = { :git => 'https://github.com/iankeen82/ikcore.git', :tag => spec.version.to_s }

  spec.source_files = 'IKCore/**/**.{h,m}'
  
  spec.requires_arc = true
  spec.platform     = :ios
  spec.ios.deployment_target = "7.0"
end
