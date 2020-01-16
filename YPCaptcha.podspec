Pod::Spec.new do |s|
  s.name         = "YPCaptcha"    
  s.version      = "1.0.3"      
  s.summary      = "A delightful ios captcha framework"  
  s.homepage     = "https://github.com/yunpian/yunpian-captcha-demo-ios"      
  s.license      = { :type => "MIT", :file => "LICENSE" } 
  s.author       = { "yunpian" => "yuhao@yunpian.com" }  
  s.platform     = :ios, '8.0'                  
  s.source       = { :git => "https://github.com/yunpian/yunpian-captcha-demo-ios.git", :tag => "v1.0.3" }         
  s.vendored_frameworks = 'YPCaptcha/YPCaptchaSDK.framework'
  s.resources = 'YPCaptcha/YPResources.bundle','README.md'
  s.requires_arc = true 
  s.frameworks = 'Foundation', 'UIKit'
end
