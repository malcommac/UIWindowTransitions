Pod::Spec.new do |s|
  s.name         = "UIWindowTransitions"
  s.version      = "0.1.1"
  s.summary      = "Animated transitions for UIWindow's rootViewController property"
  s.description  = <<-DESC
    Simple transitions for UIWindow's rootViewController set.
  DESC
  s.homepage     = "https://github.com/malcommac/UIWindowTransitions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Daniele Margutti" => "me@danielemargutti.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/malcommac/UIWindowTransitions.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
