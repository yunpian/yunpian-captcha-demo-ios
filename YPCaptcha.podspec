Pod::Spec.new do |s|
  s.name         = "YPCaptcha"    
  s.version      = "1.0.3"      
  s.summary      = "A delightful ios captcha framework"  
  s.homepage     = "https://github.com/yunpian/yunpian-captcha-demo-ios"      
  s.license      = 'MIT' 
  s.author             = { "yunpian" => "yuwowowo@126.com" }  
  s.platform     = :ios, "8.0"                  
  s.source       = { :git => "https://github.com/yunpian/yunpian-captcha-demo-ios.git", :tag => s.version }         
  s.vendored_frameworks = 'YPCaptcha/YPCaptchaSDK.framework'
  s.resources = 'YPCaptcha/YPResources.bundle'
  s.requires_arc = true 

end
